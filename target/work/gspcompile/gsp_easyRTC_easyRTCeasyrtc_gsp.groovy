import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_easyRTC_easyRTCeasyrtc_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/easyRTC/easyrtc.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(4)
expressionOut.print(resource(dir: 'css',file: 'easyrtc.css'))
printHtmlPart(5)
invokeTag('javascript','g',14,['src':("socket.io/socket.io.js")],-1)
printHtmlPart(2)
invokeTag('javascript','g',15,['src':("easyrtc/easyrtc.js")],-1)
printHtmlPart(2)
invokeTag('javascript','g',15,['src':("myScript.js")],-1)
printHtmlPart(0)
})
invokeTag('captureHead','sitemesh',16,[:],1)
printHtmlPart(6)
createClosureForHtmlPart(7, 1)
invokeTag('captureBody','sitemesh',35,[:],1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1430366344000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
