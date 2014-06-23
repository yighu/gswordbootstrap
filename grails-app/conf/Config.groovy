// locations to search for config files that get merged into the main config;
// config files can be ConfigSlurper scripts, Java properties files, or classes
// in the classpath in ConfigSlurper format

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination

// The ACCEPT header will not be used for content negotiation for user agents containing the following strings (defaults to the 4 major rendering engines)
grails.mime.disable.accept.header.userAgents = ['Gecko', 'WebKit', 'Presto', 'Trident']
grails.mime.types = [
    all:           '*/*',
    atom:          'application/atom+xml',
    css:           'text/css',
    csv:           'text/csv',
    form:          'application/x-www-form-urlencoded',
    html:          ['text/html','application/xhtml+xml'],
    js:            'text/javascript',
    json:          ['application/json', 'text/json'],
    multipartForm: 'multipart/form-data',
    rss:           'application/rss+xml',
    text:          'text/plain',
    hal:           ['application/hal+json','application/hal+xml'],
    xml:           ['text/xml', 'application/xml']
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']

// Legacy setting for codec used to encode data with ${}
grails.views.default.codec = "none"

// The default scope for controllers. May be prototype, session or singleton.
// If unspecified, controllers are prototype scoped.
grails.controllers.defaultScope = 'singleton'

// GSP settings
grails {
    views {
        gsp {
            encoding = 'UTF-8'
            htmlcodec = 'none' // use xml escaping instead of HTML4 escaping
            codecs {
                expression = 'none' // escapes values inside ${}
                scriptlet = 'none' // escapes output from scriptlets in GSPs
                taglib = 'none' // escapes output from taglibs
                staticparts = 'none' // escapes output from static template parts
            }
        }
        // escapes all not-encoded output at final stage of outputting
        filteringCodecForContentType {
            //'text/html' = 'html'
        }
    }
}
 
grails.converters.encoding = "UTF-8"
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'
inclosetroot="/home/tomcat/apache-tomcat/webapps/gsword/closet/bible"
prayerroot="/home/tomcat/prayer"
transdoc="/home/tomcat/apache-tomcat-7.0.0/webapps/gsword/transdoc"

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart=false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

environments {
    development {
        grails.logging.jul.usebridge = true
      docroot="/Users/yiguanghu/backup/yiguanghu/ccim/ccimresourceongoogle/gaelykrelated/githubhome/gswordbootstrap/web-app/pt"
      membibleid="c:/tmp/lastid.txt"
      membiblesch="c:/tmp/membiblesch.txt"
     // docroot="/home/tomcat/apache-tomcat-6.0.20/webapps/gsword"
      keyroot="/Users/yiguanghu/backup/yiguanghu/ccim/ccimresourceongoogle/gaelykrelated/githubhome/gsword2/web-app/keywords"
        membibleid="/Users/yiguanghu/ccim/gsword/gsword/web-app/memb/lastid.txt"
        membiblesch="/Users/yiguanghu/ccim/gsword/gsword/web-app/memb/membiblesch.txt"
        prayerroot="/Users/yiguanghu/backup/yiguanghu/ccim//prayerministry/daily/tmp"
        inclosetroot="/Users/yiguanghu/backup/yiguanghu/ccim/ccimresourceongoogle/gaelykrelated/githubhome/gsword2/web-app/closet/bible"
        transdoc="/Users/yiguanghu/backup/yiguanghu/ccim//prayerministry/daily/tmp"

        twitter_gsword_pwd="xxxxx"
        twitter_membible_pwd="xxxxxxx"

    }
    production {
        grails.logging.jul.usebridge = false

        // TODO: grails.serverURL = "http://www.changeme.com"
        grails.serverURL = "http://www.ccimweb.org/gsword"
        docroot="/home/tomcat/apache-tomcat/webapps/gsword"
        membibleid="/home/tomcat/membible/lastid.txt"
        membiblesch="/home/tomcat/membible/membiblesch.txt"
      keyroot="/home/tomcat/keywords"
        twitter_gsword_pwd="xxxxxx"
        twitter_membible_pwd="xxxxxx"

    }
}

// log4j configuration
log4j = {
    // Example of changing the log pattern for the default console appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    error  'org.codehaus.groovy.grails.web.servlet',        // controllers
           'org.codehaus.groovy.grails.web.pages',          // GSP
           'org.codehaus.groovy.grails.web.sitemesh',       // layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping',        // URL mapping
           'org.codehaus.groovy.grails.commons',            // core / classloading
           'org.codehaus.groovy.grails.plugins',            // plugins
           'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'
}
grails.mail.host = "localhost.localdomain"
grails.mail.port = 25
grails.mail.props = ["mail.smtp.socketFactory.port": "25",
        "mail.smtp.socketFactory.fallback": "false"]
mailman="yiguang.hu@gmail.com"

