#ifndef __SECURITYCONTEXT_H__
#define __SECURITYCONTEXT_H__

#include "ByteArray.h"
#include "APLCard.h"
#include "SAM.h"
#include "Export.h"

namespace eIDMW
{

	class SecurityContext
	{
		public:

			EIDMW_APL_API ~SecurityContext();
			EIDMW_APL_API SecurityContext(APL_Card * card)
			{
				m_card = card;
				sam_helper = new SAM(card);
			}

			EIDMW_APL_API bool verifyCVCCertificate(CByteArray ifd_cvc);

			/* 
			Return the input to the External Authenticate signature to be performed by the calling application
				6Ah || PRND2 || C || BCh
				PRND2 are the padding bytes generated by the terminal such that the term
				beginning with 6Ah and ending in BCh is the same length as the
				modulus in the External Authenticate command.

				C is the result of the hash computation on SHA–1 [PRND2 || K IFD || SN.IFD || CRnd || K ICC || DH.Params]
			 */
			EIDMW_APL_API CByteArray getExternalAuthenticateChallenge();
			EIDMW_APL_API bool verifySignedChallenge(CByteArray signed_challenge);
			EIDMW_APL_API CByteArray readFile(unsigned char *file, int filelen,  unsigned long bytesToRead);

			EIDMW_APL_API bool writeFile(char *fileID, CByteArray file_content, unsigned int offset);


		private:

			void initMuthualAuthProcess();
			bool internalAuthenticate();
			void deriveSessionKeys();
			CByteArray buildSecureAPDU(CByteArray &plaintext_apdu);
			bool checkMacInResponseAPDU(CByteArray &resp);
			bool validateInternalAuth(CByteArray &resp);
			bool selectFile(CByteArray &fileID, unsigned int *fileSize);
			CByteArray readBinary(unsigned long bytesToRead, unsigned int fileSize);

			void computeInitialSSC();

			APL_Card *m_card;

			//Session keys (16-bytes) to be used to MAC and encrypt APDUs
			CByteArray mac_key, encryption_key;

			//Diffie-Hellman parameters
			CByteArray dh_p, dh_q, dh_g;
			CByteArray m_ifd_cvc;
			//Shared secret
			CByteArray m_kicc_ifd;


			//Send Sequence Counter (used in MAC and encryption as IV)
			long m_ssc;
				
			CByteArray m_RNDICC;
			CByteArray m_RNDIFD;
			CByteArray m_kicc;
			CByteArray m_kifd;
			CByteArray pkIccAuth;
			SAM * sam_helper;

			//Value extracted from ifd_cvc certificate
			CByteArray m_snIFD;
	};


}

#endif