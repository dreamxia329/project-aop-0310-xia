/*Dream Xia*/

public aspect TraceAspectXia {
   pointcut classToTrace(): within(ComponentApp) || within(DataApp) || within(ServiceApp);

   pointcut methodToTrace():  classToTrace() && execution(* getName());
   
   before(): methodToTrace() {
      System.out.println("\t-->" + thisJoinPointStaticPart.getSignature() + //
            ", loc: " + thisJoinPointStaticPart.getSourceLocation().getLine());
   }

   after(): methodToTrace() {
      System.out.println("\t<--" + thisJoinPointStaticPart.getSourceLocation().getFileName());
   }
}
