import com.kms.katalon.core.exception.StepFailedException as StepFailedException

try {
    throw new StepFailedException('shouldn\'t stop reports being generated.')
}
catch (Exception e) {
} 

