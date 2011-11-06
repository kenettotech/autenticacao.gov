/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 1.3.35
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package be.portugal.eid;

/******************************************************************************//**
  * Class that represents one Pin
  *********************************************************************************/
public class PTEID_Pin extends PTEID_Crypto {
  private long swigCPtr;

  protected PTEID_Pin(long cPtr, boolean cMemoryOwn) {
    super(pteidlibJava_WrapperJNI.SWIGPTEID_PinUpcast(cPtr), cMemoryOwn);
    swigCPtr = cPtr;
  }

  protected static long getCPtr(PTEID_Pin obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if(swigCPtr != 0 && swigCMemOwn) {
      swigCMemOwn = false;
      pteidlibJava_WrapperJNI.delete_PTEID_Pin(swigCPtr);
    }
    swigCPtr = 0;
    super.delete();
  }

	/** Get the index of the pin */
  public long getIndex() throws java.lang.Exception {
    return pteidlibJava_WrapperJNI.PTEID_Pin_getIndex(swigCPtr, this);
  }

	/** Get the type of the pin */
  public long getType() throws java.lang.Exception {
    return pteidlibJava_WrapperJNI.PTEID_Pin_getType(swigCPtr, this);
  }

	/** Get the id of the pin */
  public long getId() throws java.lang.Exception {
    return pteidlibJava_WrapperJNI.PTEID_Pin_getId(swigCPtr, this);
  }

	/** Get the usage code of the pin */
  public PTEID_PinUsage getUsageCode() throws java.lang.Exception {
    return PTEID_PinUsage.swigToEnum(pteidlibJava_WrapperJNI.PTEID_Pin_getUsageCode(swigCPtr, this));
  }

	/** Get the flags of the pin */
  public long getFlags() throws java.lang.Exception {
    return pteidlibJava_WrapperJNI.PTEID_Pin_getFlags(swigCPtr, this);
  }

	/** Get the label of the pin */
  public String getLabel() throws java.lang.Exception {
    return pteidlibJava_WrapperJNI.PTEID_Pin_getLabel(swigCPtr, this);
  }

	/** Return the signature of the pin */
  public PTEID_ByteArray getSignature() throws java.lang.Exception {
    return new PTEID_ByteArray(pteidlibJava_WrapperJNI.PTEID_Pin_getSignature(swigCPtr, this), false);
  }

	/**
	  * Return the remaining tries
	  *
	  * This opperation is not supported by all cards.
	  *
	  * @return -1 if not supported, else the number of remaining tries
	  */
  public int getTriesLeft() throws java.lang.Exception {
    return pteidlibJava_WrapperJNI.PTEID_Pin_getTriesLeft(swigCPtr, this);
  }

	/**
	  * Ask the card to verify the pin
	  *
	  * @param csPin is the pin code to verify (if csPin is empty, a popup will ask for the code)
	  * @param ulRemaining return the remaining tries (only if verifying failed)
	  *
	  * @return true if success and false if failed
	  */
  public boolean verifyPin(String csPin, PTEID_ulwrapper ulRemaining) throws java.lang.Exception {
	  long		pRemaining = pteidlibJava_WrapperJNI.new_ulongp();				// get a C++ ptr
	  boolean	retval     = pteidlibJava_WrapperJNI.PTEID_Pin_verifyPin(swigCPtr, this, csPin, pRemaining);

	  ulRemaining.m_long = pteidlibJava_WrapperJNI.ulongp_value(pRemaining);
	  pteidlibJava_WrapperJNI.delete_ulongp(pRemaining);
	  return retval;
}

	/**
	  * Ask the card to change the pin
	  *
	  * if csPin1 or csPin2 are empty, a popup will ask for the codes
	  *
	  * @param csPin1 is the old pin code
	  * @param csPin2 is the new pin code
	  * @param ulRemaining return the remaining tries (only when operation failed)
	  *
	  * @return true if success and false if failed
	  */
  public boolean changePin(String csPin1, String csPin2, PTEID_ulwrapper ulRemaining) throws java.lang.Exception {
	  long		pRemaining	= pteidlibJava_WrapperJNI.new_ulongp();				// get a C++ ptr
	  boolean	retval		= pteidlibJava_WrapperJNI.PTEID_Pin_changePin(swigCPtr, this, csPin1, csPin2, pRemaining);

	  ulRemaining.m_long = pteidlibJava_WrapperJNI.ulongp_value(pRemaining);
	  pteidlibJava_WrapperJNI.delete_ulongp(pRemaining);
	  return retval;
}

}
