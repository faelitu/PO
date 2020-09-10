[33mcommit 5e6527c75bb35bb31a296278727516aefeff70ff[m
Author: giandoso <a15029@bcc.unifal-mg.edu.br>
Date:   Fri May 24 11:35:40 2019 -0300

    Primeiro contato com cplex e configuração do ambiente

[1mdiff --git a/build.xml b/build.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..91d2953[m
[1m--- /dev/null[m
[1m+++ b/build.xml[m
[36m@@ -0,0 +1,73 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!-- You may freely edit this file. See commented blocks below for -->[m
[32m+[m[32m<!-- some examples of how to customize the build. -->[m
[32m+[m[32m<!-- (If you delete it and reopen the project it will be recreated.) -->[m
[32m+[m[32m<!-- By default, only the Clean and Build commands use this build script. -->[m
[32m+[m[32m<!-- Commands such as Run, Debug, and Test only use this build script if -->[m
[32m+[m[32m<!-- the Compile on Save feature is turned off for the project. -->[m
[32m+[m[32m<!-- You can turn off the Compile on Save (or Deploy on Save) setting -->[m
[32m+[m[32m<!-- in the project's Project Properties dialog box.-->[m
[32m+[m[32m<project name="PO" default="default" basedir=".">[m
[32m+[m[32m    <description>Builds, tests, and runs the project PO.</description>[m
[32m+[m[32m    <import file="nbproject/build-impl.xml"/>[m
[32m+[m[32m    <!--[m
[32m+[m
[32m+[m[32m    There exist several targets which are by default empty and which can be[m[41m [m
[32m+[m[32m    used for execution of your tasks. These targets are usually executed[m[41m [m
[32m+[m[32m    before and after some main targets. They are:[m[41m [m
[32m+[m
[32m+[m[32m      -pre-init:                 called before initialization of project properties[m
[32m+[m[32m      -post-init:                called after initialization of project properties[m
[32m+[m[32m      -pre-compile:              called before javac compilation[m
[32m+[m[32m      -post-compile:             called after javac compilation[m
[32m+[m[32m      -pre-compile-single:       called before javac compilation of single file[m
[32m+[m[32m      -post-compile-single:      called after javac compilation of single file[m
[32m+[m[32m      -pre-compile-test:         called before javac compilation of JUnit tests[m
[32m+[m[32m      -post-compile-test:        called after javac compilation of JUnit tests[m
[32m+[m[32m      -pre-compile-test-single:  called before javac compilation of single JUnit test[m
[32m+[m[32m      -post-compile-test-single: called after javac compilation of single JUunit test[m
[32m+[m[32m      -pre-jar:                  called before JAR building[m
[32m+[m[32m      -post-jar:                 called after JAR building[m
[32m+[m[32m      -post-clean:               called after cleaning build products[m
[32m+[m
[32m+[m[32m    (Targets beginning with '-' are not intended to be called on their own.)[m
[32m+[m
[32m+[m[32m    Example of inserting an obfuscator after compilation could look like this:[m
[32m+[m
[32m+[m[32m        <target name="-post-compile">[m
[32m+[m[32m            <obfuscate>[m
[32m+[m[32m                <fileset dir="${build.classes.dir}"/>[m
[32m+[m[32m            </obfuscate>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    For list of available properties check the imported[m[41m [m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m
[32m+[m[32m    Another way to customize the build is by overriding existing main targets.[m
[32m+[m[32m    The targets of interest are:[m[41m [m
[32m+[m
[32m+[m[32m      -init-macrodef-javac:     defines macro for javac compilation[m
[32m+[m[32m      -init-macrodef-junit:     defines macro for junit execution[m
[32m+[m[32m      -init-macrodef-debug:     defines macro for class debugging[m
[32m+[m[32m      -init-macrodef-java:      defines macro for class execution[m
[32m+[m[32m      -do-jar:                  JAR building[m
[32m+[m[32m      run:                      execution of project[m[41m [m
[32m+[m[32m      -javadoc-build:           Javadoc generation[m
[32m+[m[32m      test-report:              JUnit report generation[m
[32m+[m
[32m+[m[32m    An example of overriding the target for project execution could look like this:[m
[32m+[m
[32m+[m[32m        <target name="run" depends="PO-impl.jar">[m
[32m+[m[32m            <exec dir="bin" executable="launcher.exe">[m
[32m+[m[32m                <arg file="${dist.jar}"/>[m
[32m+[m[32m            </exec>[m
[32m+[m[32m        </target>[m
[32m+[m
[32m+[m[32m    Notice that the overridden target depends on the jar target and not only on[m[41m [m
[32m+[m[32m    the compile target as the regular run target does. Again, for a list of available[m[41m [m
[32m+[m[32m    properties which you can use, check the target you are overriding in the[m
[32m+[m[32m    nbproject/build-impl.xml file.[m[41m [m
[32m+[m
[32m+[m[32m    -->[m
[32m+[m[32m</project>[m
[1mdiff --git a/build/classes/.netbeans_automatic_build b/build/classes/.netbeans_automatic_build[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/build/classes/.netbeans_update_resources b/build/classes/.netbeans_update_resources[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/build/classes/po/xpto.class b/build/classes/po/xpto.class[m
[1mnew file mode 100644[m
[1mindex 0000000..b3ab1c5[m
Binary files /dev/null and b/build/classes/po/xpto.class differ
[1mdiff --git a/lib/cplex.jar b/lib/cplex.jar[m
[1mnew file mode 100755[m
[1mindex 0000000..428441e[m
Binary files /dev/null and b/lib/cplex.jar differ
[1mdiff --git a/manifest.mf b/manifest.mf[m
[1mnew file mode 100644[m
[1mindex 0000000..328e8e5[m
[1m--- /dev/null[m
[1m+++ b/manifest.mf[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32mManifest-Version: 1.0[m
[32m+[m[32mX-COMMENT: Main-Class will be added automatically by build[m
[32m+[m
[1mdiff --git a/nbproject/build-impl.xml b/nbproject/build-impl.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..f86d658[m
[1m--- /dev/null[m
[1m+++ b/nbproject/build-impl.xml[m
[36m@@ -0,0 +1,1420 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<!--[m
[32m+[m[32m*** GENERATED FROM project.xml - DO NOT EDIT  ***[m
[32m+[m[32m***         EDIT ../build.xml INSTEAD         ***[m
[32m+[m
[32m+[m[32mFor the purpose of easier reading the script[m
[32m+[m[32mis divided into following sections:[m
[32m+[m
[32m+[m[32m  - initialization[m
[32m+[m[32m  - compilation[m
[32m+[m[32m  - jar[m
[32m+[m[32m  - execution[m
[32m+[m[32m  - debugging[m
[32m+[m[32m  - javadoc[m
[32m+[m[32m  - test compilation[m
[32m+[m[32m  - test execution[m
[32m+[m[32m  - test debugging[m
[32m+[m[32m  - applet[m
[32m+[m[32m  - cleanup[m
[32m+[m
[32m+[m[32m        -->[m
[32m+[m[32m<project xmlns:j2seproject1="http://www.netbeans.org/ns/j2se-project/1" xmlns:j2seproject3="http://www.netbeans.org/ns/j2se-project/3" xmlns:jaxrpc="http://www.netbeans.org/ns/j2se-project/jax-rpc" basedir=".." default="default" name="PO-impl">[m
[32m+[m[32m    <fail message="Please build using Ant 1.8.0 or higher.">[m
[32m+[m[32m        <condition>[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <antversion atleast="1.8.0"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </fail>[m
[32m+[m[32m    <target depends="test,jar,javadoc" description="Build and test whole project." name="default"/>[m
[32m+[m[32m    <!--[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m                INITIALIZATION SECTION[m[41m [m
[32m+[m[32m                ======================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init" name="-init-private">[m
[32m+[m[32m        <property file="nbproject/private/config.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/private/private.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private" name="-init-user">[m
[32m+[m[32m        <property file="${user.properties.file}"/>[m
[32m+[m[32m        <!-- The two properties below are usually overridden -->[m
[32m+[m[32m        <!-- by the active platform. Just a fallback. -->[m
[32m+[m[32m        <property name="default.javac.source" value="1.6"/>[m
[32m+[m[32m        <property name="default.javac.target" value="1.6"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user" name="-init-project">[m
[32m+[m[32m        <property file="nbproject/configs/${config}.properties"/>[m
[32m+[m[32m        <property file="nbproject/project.properties"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-init-macrodef-property" name="-do-init">[m
[32m+[m[32m        <property name="platform.java" value="${java.home}/bin/java"/>[m
[32m+[m[32m        <available file="${manifest.file}" property="manifest.available"/>[m
[32m+[m[32m        <condition property="splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${application.splash}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <available file="${application.splash}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${main.class}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javac.profile"/>[m
[32m+[m[32m                <length length="0" string="${javac.profile}" when="greater"/>[m
[32m+[m[32m                <matches pattern="((1\.[89])|9)(\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${jar.archive.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m                <istrue value="${not.archive.disabled}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.mkdist">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="do.archive"/>[m
[32m+[m[32m                <isset property="libs.CopyLibs.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <istrue value="${mkdist.disabled}"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+manifest.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="manifest.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+main.class.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="main.class.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+splashscreen.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="splashscreen.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="do.archive+profile.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="profile.available"/>[m
[32m+[m[32m                <istrue value="${do.archive}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.tests">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${test.src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="have.sources">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available file="${src.dir}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="netbeans.home+have.tests">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="netbeans.home"/>[m
[32m+[m[32m                <isset property="have.tests"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="no.javadoc.preview">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.preview"/>[m
[32m+[m[32m                <isfalse value="${javadoc.preview}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="run.jvmargs" value=""/>[m
[32m+[m[32m        <property name="run.jvmargs.ide" value=""/>[m
[32m+[m[32m        <property name="javac.compilerargs" value=""/>[m
[32m+[m[32m        <property name="work.dir" value="${basedir}"/>[m
[32m+[m[32m        <condition property="no.deps">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${no.dependencies}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javac.debug" value="true"/>[m
[32m+[m[32m        <property name="javadoc.preview" value="true"/>[m
[32m+[m[32m        <property name="application.args" value=""/>[m
[32m+[m[32m        <property name="source.encoding" value="${file.encoding}"/>[m
[32m+[m[32m        <property name="runtime.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="manifest.encoding" value="${source.encoding}"/>[m
[32m+[m[32m        <condition property="javadoc.encoding.used" value="${javadoc.encoding}">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="javadoc.encoding"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${javadoc.encoding}" arg2=""/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="javadoc.encoding.used" value="${source.encoding}"/>[m
[32m+[m[32m        <property name="includes" value="**"/>[m
[32m+[m[32m        <property name="excludes" value=""/>[m
[32m+[m[32m        <property name="do.depend" value="false"/>[m
[32m+[m[32m        <condition property="do.depend.true">[m
[32m+[m[32m            <istrue value="${do.depend}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <path id="endorsed.classpath.path" path="${endorsed.classpath}"/>[m
[32m+[m[32m        <condition else="" property="endorsed.classpath.cmd.line.arg" value="-Xbootclasspath/p:'${toString:endorsed.classpath.path}'">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <isset property="endorsed.classpath"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <equals arg1="${endorsed.classpath}" arg2="" trim="true"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="javac.profile.cmd.line.arg" value="-profile ${javac.profile}">[m
[32m+[m[32m            <isset property="profile.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="jdkBug6558476">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <matches pattern="1\.[56]" string="${java.specification.version}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <os family="unix"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="javac.fork">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <istrue value="${jdkBug6558476}"/>[m
[32m+[m[32m                <istrue value="${javac.external.vm}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="jar.index" value="false"/>[m
[32m+[m[32m        <property name="jar.index.metainf" value="${jar.index}"/>[m
[32m+[m[32m        <property name="copylibs.rebase" value="true"/>[m
[32m+[m[32m        <available file="${meta.inf.dir}/persistence.xml" property="has.persistence.xml"/>[m
[32m+[m[32m        <condition property="junit.available">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <available classname="org.junit.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m                <available classname="junit.framework.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="testng.available">[m
[32m+[m[32m            <available classname="org.testng.annotations.Test" classpath="${run.test.classpath}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition property="junit+testng.available">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <istrue value="${testng.available}"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="testng" property="testng.mode" value="mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="testng.debug.mode" value="-mixed">[m
[32m+[m[32m            <istrue value="${junit+testng.available}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <property name="java.failonerror" value="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init" name="-init-check">[m
[32m+[m[32m        <fail unless="src.dir">Must set src.dir</fail>[m
[32m+[m[32m        <fail unless="test.src.dir">Must set test.src.dir</fail>[m
[32m+[m[32m        <fail unless="build.dir">Must set build.dir</fail>[m
[32m+[m[32m        <fail unless="dist.dir">Must set dist.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.dir">Must set build.classes.dir</fail>[m
[32m+[m[32m        <fail unless="dist.javadoc.dir">Must set dist.javadoc.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.classes.dir">Must set build.test.classes.dir</fail>[m
[32m+[m[32m        <fail unless="build.test.results.dir">Must set build.test.results.dir</fail>[m
[32m+[m[32m        <fail unless="build.classes.excludes">Must set build.classes.excludes</fail>[m
[32m+[m[32m        <fail unless="dist.jar">Must set dist.jar</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-property">[m
[32m+[m[32m        <macrodef name="property" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-macrodef-javac-with-processors">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <mkdir dir="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <compilerarg value="-processorpath"/>[m
[32m+[m[32m                    <compilerarg path="@{processorpath}:${empty.dir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.processors.internal}"/>[m
[32m+[m[32m                    <compilerarg line="${annotation.processing.processor.options}"/>[m
[32m+[m[32m                    <compilerarg value="-s"/>[m
[32m+[m[32m                    <compilerarg path="@{apgeneratedsrcdir}"/>[m
[32m+[m[32m                    <compilerarg line="${ap.proc.none.internal}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" name="-init-macrodef-javac-without-processors" unless="ap.supported.internal">[m
[32m+[m[32m        <macrodef name="javac" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="${javac.processorpath}" name="processorpath"/>[m
[32m+[m[32m            <attribute default="${build.generated.sources.dir}/ap-source-output" name="apgeneratedsrcdir"/>[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="${javac.debug}" name="debug"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="sourcepath"/>[m
[32m+[m[32m            <attribute default="${empty.dir}" name="gensrcdir"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.dir}/empty" name="empty.dir"/>[m
[32m+[m[32m                <mkdir dir="${empty.dir}"/>[m
[32m+[m[32m                <javac debug="@{debug}" deprecation="${javac.deprecation}" destdir="@{destdir}" encoding="${source.encoding}" excludes="@{excludes}" fork="${javac.fork}" includeantruntime="false" includes="@{includes}" source="${javac.source}" sourcepath="@{sourcepath}" srcdir="@{srcdir}" target="${javac.target}" tempdir="${java.io.tmpdir}">[m
[32m+[m[32m                    <src>[m
[32m+[m[32m                        <dirset dir="@{gensrcdir}" erroronmissingdir="false">[m
[32m+[m[32m                            <include name="*"/>[m
[32m+[m[32m                        </dirset>[m
[32m+[m[32m                    </src>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <compilerarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.profile.cmd.line.arg}"/>[m
[32m+[m[32m                    <compilerarg line="${javac.compilerargs}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </javac>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-javac-with-processors,-init-macrodef-javac-without-processors" name="-init-macrodef-javac">[m
[32m+[m[32m        <macrodef name="depend" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${src.dir}" name="srcdir"/>[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <attribute default="${javac.classpath}" name="classpath"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <depend cache="${build.dir}/depcache" destdir="@{destdir}" excludes="${excludes}" includes="${includes}" srcdir="@{srcdir}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </depend>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="force-recompile" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="destdir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <fail unless="javac.includes">Must set javac.includes</fail>[m
[32m+[m[32m                <pathconvert pathsep="${line.separator}" property="javac.includes.binary">[m
[32m+[m[32m                    <path>[m
[32m+[m[32m                        <filelist dir="@{destdir}" files="${javac.includes}"/>[m
[32m+[m[32m                    </path>[m
[32m+[m[32m                    <globmapper from="*.java" to="*.class"/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <tempfile deleteonexit="true" property="javac.includesfile.binary"/>[m
[32m+[m[32m                <echo file="${javac.includesfile.binary}" message="${javac.includes.binary}"/>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <files includesfile="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m                <delete>[m
[32m+[m[32m                    <fileset file="${javac.includesfile.binary}"/>[m
[32m+[m[32m                </delete>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-init">[m
[32m+[m[32m        <condition else="false" property="nb.junit.batch" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <not>[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </not>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="false" property="nb.junit.single" value="true">[m
[32m+[m[32m            <and>[m
[32m+[m[32m                <istrue value="${junit.available}"/>[m
[32m+[m[32m                <isset property="test.method"/>[m
[32m+[m[32m            </and>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-test-properties">[m
[32m+[m[32m        <property name="test.binaryincludes" value="&lt;nothing&gt;"/>[m
[32m+[m[32m        <property name="test.binarytestincludes" value=""/>[m
[32m+[m[32m        <property name="test.binaryexcludes" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${nb.junit.single}" name="-init-macrodef-junit-single" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-batch" unless="${nb.junit.single}">[m
[32m+[m[32m        <macrodef name="junit" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-init,-init-macrodef-junit-single, -init-macrodef-junit-batch" if="${junit.available}" name="-init-macrodef-junit"/>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng">[m
[32m+[m[32m        <macrodef name="testng" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="" property="testng.methods.arg" value="@{testincludes}.@{testmethods}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <union id="test.set">[m
[32m+[m[32m                    <fileset dir="${test.src.dir}" excludes="@{excludes},**/*.xml,${excludes}" includes="@{includes}">[m
[32m+[m[32m                        <filename name="@{testincludes}"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </union>[m
[32m+[m[32m                <taskdef classname="org.testng.TestNGAntTask" classpath="${run.test.classpath}" name="testng"/>[m
[32m+[m[32m                <testng classfilesetref="test.set" failureProperty="tests.failed" listeners="org.testng.reporters.VerboseReporter" methods="${testng.methods.arg}" mode="${testng.mode}" outputdir="${build.test.results.dir}" suitename="PO" testname="TestNG tests" workingDir="${work.dir}">[m
[32m+[m[32m                    <xmlfileset dir="${build.test.classes.dir}" includes="@{testincludes}"/>[m
[32m+[m[32m                    <propertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </propertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-test-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <echo>No tests executed.</echo>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit" if="${junit.available}" name="-init-macrodef-junit-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng" if="${testng.available}" name="-init-macrodef-testng-impl">[m
[32m+[m[32m        <macrodef name="test-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:testng>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-impl,-init-macrodef-junit-impl,-init-macrodef-testng-impl" name="-init-macrodef-test">[m
[32m+[m[32m        <macrodef name="test" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${junit.available}" name="-init-macrodef-junit-debug" unless="${nb.junit.batch}">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <test methods="@{testmethods}" name="@{testincludes}" todir="${build.test.results.dir}"/>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-test-properties" if="${nb.junit.batch}" name="-init-macrodef-junit-debug-batch">[m
[32m+[m[32m        <macrodef name="junit-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="junit.forkmode" value="perTest"/>[m
[32m+[m[32m                <junit dir="${work.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" forkmode="${junit.forkmode}" showoutput="true" tempdir="${build.dir}">[m
[32m+[m[32m                    <batchtest todir="${build.test.results.dir}">[m
[32m+[m[32m                        <fileset dir="${test.src.dir}" excludes="@{excludes},${excludes}" includes="@{includes}">[m
[32m+[m[32m                            <filename name="@{testincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                        <fileset dir="${build.test.classes.dir}" excludes="@{excludes},${excludes},${test.binaryexcludes}" includes="${test.binaryincludes}">[m
[32m+[m[32m                            <filename name="${test.binarytestincludes}"/>[m
[32m+[m[32m                        </fileset>[m
[32m+[m[32m                    </batchtest>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                        <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <formatter type="brief" usefile="false"/>[m
[32m+[m[32m                    <formatter type="xml"/>[m
[32m+[m[32m                    <jvmarg value="-ea"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </junit>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug,-init-macrodef-junit-debug-batch" if="${junit.available}" name="-init-macrodef-junit-debug-impl">[m
[32m+[m[32m        <macrodef name="test-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <element implicit="true" name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:junit-debug excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </j2seproject3:junit-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="${testng.available}" name="-init-macrodef-testng-debug">[m
[32m+[m[32m        <macrodef name="testng-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <condition else="-testclass @{testClass}" property="test.class.or.method" value="-methods @{testClass}.@{testMethod}">[m
[32m+[m[32m                    <isset property="test.method"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <condition else="-suitename PO -testname @{testClass} ${test.class.or.method}" property="testng.cmd.args" value="@{testClass}">[m
[32m+[m[32m                    <matches pattern=".*\.xml" string="@{testClass}"/>[m
[32m+[m[32m                </condition>[m
[32m+[m[32m                <delete dir="${build.test.results.dir}" quiet="true"/>[m
[32m+[m[32m                <mkdir dir="${build.test.results.dir}"/>[m
[32m+[m[32m                <j2seproject3:debug classname="org.testng.TestNG" classpath="${debug.test.classpath}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <customize2/>[m
[32m+[m[32m                        <jvmarg value="-ea"/>[m
[32m+[m[32m                        <arg line="${testng.debug.mode}"/>[m
[32m+[m[32m                        <arg line="-d ${build.test.results.dir}"/>[m
[32m+[m[32m                        <arg line="-listener org.testng.reporters.VerboseReporter"/>[m
[32m+[m[32m                        <arg line="${testng.cmd.args}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug" if="${testng.available}" name="-init-macrodef-testng-debug-impl">[m
[32m+[m[32m        <macrodef name="testng-debug-impl" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <element implicit="true" name="customize2" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2/>[m
[32m+[m[32m                </j2seproject3:testng-debug>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-junit-debug-impl" if="${junit.available}" name="-init-macrodef-test-debug-junit">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:test-debug-impl excludes="@{excludes}" includes="@{includes}" testincludes="@{testincludes}" testmethods="@{testmethods}">[m
[32m+[m[32m                    <customize>[m
[32m+[m[32m                        <classpath>[m
[32m+[m[32m                            <path path="${run.test.classpath}"/>[m
[32m+[m[32m                        </classpath>[m
[32m+[m[32m                        <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                        <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    </customize>[m
[32m+[m[32m                </j2seproject3:test-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-testng-debug-impl" if="${testng.available}" name="-init-macrodef-test-debug-testng">[m
[32m+[m[32m        <macrodef name="test-debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${includes}" name="includes"/>[m
[32m+[m[32m            <attribute default="${excludes}" name="excludes"/>[m
[32m+[m[32m            <attribute default="**" name="testincludes"/>[m
[32m+[m[32m            <attribute default="" name="testmethods"/>[m
[32m+[m[32m            <attribute default="${main.class}" name="testClass"/>[m
[32m+[m[32m            <attribute default="" name="testMethod"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <j2seproject3:testng-debug-impl testClass="@{testClass}" testMethod="@{testMethod}">[m
[32m+[m[32m                    <customize2>[m
[32m+[m[32m                        <syspropertyset>[m
[32m+[m[32m                            <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                            <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                        </syspropertyset>[m
[32m+[m[32m                    </customize2>[m
[32m+[m[32m                </j2seproject3:testng-debug-impl>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-macrodef-test-debug-junit,-init-macrodef-test-debug-testng" name="-init-macrodef-test-debug"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiling section; consider it deprecated[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile, -profile-init-check" if="profiler.info.jvmargs.agent" name="profile-init"/>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-pre-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-post-init">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="profiler.info.jvmargs.agent" name="-profile-init-macrodef-profile">[m
[32m+[m[32m        <macrodef name="resolve">[m
[32m+[m[32m            <attribute name="name"/>[m
[32m+[m[32m            <attribute name="value"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property name="@{name}" value="${env.@{value}}"/>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="profile">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property environment="env"/>[m
[32m+[m[32m                <resolve name="profiler.current.path" value="${profiler.info.pathvar}"/>[m
[32m+[m[32m                <java classname="@{classname}" dir="${profiler.info.dir}" failonerror="${java.failonerror}" fork="true" jvm="${profiler.info.jvm}">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m                    <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m                    <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m                    <arg line="${application.args}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="${run.classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-pre-init, init, -profile-post-init, -profile-init-macrodef-profile" if="profiler.info.jvmargs.agent" name="-profile-init-check">[m
[32m+[m[32m        <fail unless="profiler.info.jvm">Must set JVM to use for profiling in profiler.info.jvm</fail>[m
[32m+[m[32m        <fail unless="profiler.info.jvmargs.agent">Must set profiler agent JVM arguments in profiler.info.jvmargs.agent</fail>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB7.2 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-nbjpda">[m
[32m+[m[32m        <macrodef name="nbjpdastart" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="name"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="" name="stopclassname"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdastart addressproperty="jpda.address" name="@{name}" stopclassname="@{stopclassname}" transport="${debug-transport}">[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                </nbjpdastart>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m        <macrodef name="nbjpdareload" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${build.classes.dir}" name="dir"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <nbjpdareload>[m
[32m+[m[32m                    <fileset dir="@{dir}" includes="${fix.classes}">[m
[32m+[m[32m                        <include name="${fix.includes}*.class"/>[m
[32m+[m[32m                    </fileset>[m
[32m+[m[32m                </nbjpdareload>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-debug-args">[m
[32m+[m[32m        <property name="version-output" value="java version &quot;${ant.java.version}"/>[m
[32m+[m[32m        <condition property="have-jdk-older-than-1.4">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.0"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.1"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.2"/>[m
[32m+[m[32m                <contains string="${version-output}" substring="java version &quot;1.3"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="-Xdebug" property="debug-args-line" value="-Xdebug -Xnoagent -Djava.compiler=none">[m
[32m+[m[32m            <istrue value="${have-jdk-older-than-1.4}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="dt_socket" property="debug-transport-by-os" value="dt_shmem">[m
[32m+[m[32m            <os family="windows"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="${debug-transport-by-os}" property="debug-transport" value="${debug.transport}">[m
[32m+[m[32m            <isset property="debug.transport"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-debug-args" name="-init-macrodef-debug">[m
[32m+[m[32m        <macrodef name="debug" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${debug.classpath}" name="classpath"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg line="${debug-args-line}"/>[m
[32m+[m[32m                    <jvmarg value="-Xrunjdwp:transport=${debug-transport},address=${jpda.address}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-java">[m
[32m+[m[32m        <macrodef name="java" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <attribute default="${main.class}" name="classname"/>[m
[32m+[m[32m            <attribute default="${run.classpath}" name="classpath"/>[m
[32m+[m[32m            <attribute default="jvm" name="jvm"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <java classname="@{classname}" dir="${work.dir}" failonerror="${java.failonerror}" fork="true">[m
[32m+[m[32m                    <jvmarg line="${endorsed.classpath.cmd.line.arg}"/>[m
[32m+[m[32m                    <jvmarg value="-Dfile.encoding=${runtime.encoding}"/>[m
[32m+[m[32m                    <redirector errorencoding="${runtime.encoding}" inputencoding="${runtime.encoding}" outputencoding="${runtime.encoding}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs}"/>[m
[32m+[m[32m                    <jvmarg line="${run.jvmargs.ide}"/>[m
[32m+[m[32m                    <classpath>[m
[32m+[m[32m                        <path path="@{classpath}"/>[m
[32m+[m[32m                    </classpath>[m
[32m+[m[32m                    <syspropertyset>[m
[32m+[m[32m                        <propertyref prefix="run-sys-prop."/>[m
[32m+[m[32m                        <mapper from="run-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m                    </syspropertyset>[m
[32m+[m[32m                    <customize/>[m
[32m+[m[32m                </java>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-macrodef-copylibs">[m
[32m+[m[32m        <macrodef name="copylibs" uri="http://www.netbeans.org/ns/j2se-project/3">[m
[32m+[m[32m            <attribute default="${manifest.file}" name="manifest"/>[m
[32m+[m[32m            <element name="customize" optional="true"/>[m
[32m+[m[32m            <sequential>[m
[32m+[m[32m                <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m                <pathconvert property="run.classpath.without.build.classes.dir">[m
[32m+[m[32m                    <path path="${run.classpath}"/>[m
[32m+[m[32m                    <map from="${build.classes.dir.resolved}" to=""/>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <pathconvert pathsep=" " property="jar.classpath">[m
[32m+[m[32m                    <path path="${run.classpath.without.build.classes.dir}"/>[m
[32m+[m[32m                    <chainedmapper>[m
[32m+[m[32m                        <flattenmapper/>[m
[32m+[m[32m                        <filtermapper>[m
[32m+[m[32m                            <replacestring from=" " to="%20"/>[m
[32m+[m[32m                        </filtermapper>[m
[32m+[m[32m                        <globmapper from="*" to="lib/*"/>[m
[32m+[m[32m                    </chainedmapper>[m
[32m+[m[32m                </pathconvert>[m
[32m+[m[32m                <taskdef classname="org.netbeans.modules.java.j2seproject.copylibstask.CopyLibs" classpath="${libs.CopyLibs.classpath}" name="copylibs"/>[m
[32m+[m[32m                <copylibs compress="${jar.compress}" excludeFromCopy="${copylibs.excludes}" index="${jar.index}" indexMetaInf="${jar.index.metainf}" jarfile="${dist.jar}" manifest="@{manifest}" manifestencoding="UTF-8" rebase="${copylibs.rebase}" runtimeclasspath="${run.classpath.without.build.classes.dir}">[m
[32m+[m[32m                    <fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m                    <manifest>[m
[32m+[m[32m                        <attribute name="Class-Path" value="${jar.classpath}"/>[m
[32m+[m[32m                        <customize/>[m
[32m+[m[32m                    </manifest>[m
[32m+[m[32m                </copylibs>[m
[32m+[m[32m            </sequential>[m
[32m+[m[32m        </macrodef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-presetdef-jar">[m
[32m+[m[32m        <presetdef name="jar" uri="http://www.netbeans.org/ns/j2se-project/1">[m
[32m+[m[32m            <jar compress="${jar.compress}" index="${jar.index}" jarfile="${dist.jar}" manifestencoding="UTF-8">[m
[32m+[m[32m                <j2seproject1:fileset dir="${build.classes.dir}" excludes="${dist.archive.excludes}"/>[m
[32m+[m[32m            </jar>[m
[32m+[m[32m        </presetdef>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-init-ap-cmdline-properties">[m
[32m+[m[32m        <property name="annotation.processing.enabled" value="true"/>[m
[32m+[m[32m        <property name="annotation.processing.processors.list" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.processor.options" value=""/>[m
[32m+[m[32m        <property name="annotation.processing.run.all.processors" value="true"/>[m
[32m+[m[32m        <property name="javac.processorpath" value="${javac.classpath}"/>[m
[32m+[m[32m        <property name="javac.test.processorpath" value="${javac.test.classpath}"/>[m
[32m+[m[32m        <condition property="ap.supported.internal" value="true">[m
[32m+[m[32m            <not>[m
[32m+[m[32m                <matches pattern="1\.[0-5](\..*)?" string="${javac.source}"/>[m
[32m+[m[32m            </not>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties" if="ap.supported.internal" name="-init-ap-cmdline-supported">[m
[32m+[m[32m        <condition else="" property="ap.processors.internal" value="-processor ${annotation.processing.processors.list}">[m
[32m+[m[32m            <isfalse value="${annotation.processing.run.all.processors}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="" property="ap.proc.none.internal" value="-proc:none">[m
[32m+[m[32m            <isfalse value="${annotation.processing.enabled}"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-init-ap-cmdline-properties,-init-ap-cmdline-supported" name="-init-ap-cmdline">[m
[32m+[m[32m        <property name="ap.cmd.line.internal" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-pre-init,-init-private,-init-user,-init-project,-do-init,-post-init,-init-check,-init-macrodef-property,-init-macrodef-javac,-init-macrodef-test,-init-macrodef-test-debug,-init-macrodef-nbjpda,-init-macrodef-debug,-init-macrodef-java,-init-presetdef-jar,-init-ap-cmdline" name="init"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ===================[m
[32m+[m[32m                COMPILATION SECTION[m
[32m+[m[32m                ===================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target name="-deps-jar-init" unless="built-jar.properties">[m
[32m+[m[32m        <property location="${build.dir}/built-jar.properties" name="built-jar.properties"/>[m
[32m+[m[32m        <delete file="${built-jar.properties}" quiet="true"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="already.built.jar.${basedir}" name="-warn-already-built-jar">[m
[32m+[m[32m        <echo level="warn" message="Cycle detected: PO was already built"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-deps-jar-init" name="deps-jar" unless="no.deps">[m
[32m+[m[32m        <mkdir dir="${build.dir}"/>[m
[32m+[m[32m        <touch file="${built-jar.properties}" verbose="false"/>[m
[32m+[m[32m        <property file="${built-jar.properties}" prefix="already.built.jar."/>[m
[32m+[m[32m        <antcall target="-warn-already-built-jar"/>[m
[32m+[m[32m        <propertyfile file="${built-jar.properties}">[m
[32m+[m[32m            <entry key="${basedir}" value=""/>[m
[32m+[m[32m        </propertyfile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-check-automatic-build,-clean-after-automatic-build" name="-verify-automatic-build"/>[m
[32m+[m[32m    <target depends="init" name="-check-automatic-build">[m
[32m+[m[32m        <available file="${build.classes.dir}/.netbeans_automatic_build" property="netbeans.automatic.build"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.automatic.build" name="-clean-after-automatic-build">[m
[32m+[m[32m        <antcall target="clean"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar" name="-pre-pre-compile">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="do.depend.true" name="-compile-depend">[m
[32m+[m[32m        <pathconvert property="build.generated.subdirs">[m
[32m+[m[32m            <dirset dir="${build.generated.sources.dir}" erroronmissingdir="false">[m
[32m+[m[32m                <include name="*"/>[m
[32m+[m[32m            </dirset>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <j2seproject3:depend srcdir="${src.dir}:${build.generated.subdirs}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile,-pre-compile, -copy-persistence-xml,-compile-depend" if="have.sources" name="-do-compile">[m
[32m+[m[32m        <j2seproject3:javac gensrcdir="${build.generated.sources.dir}"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}">[m
[32m+[m[32m            <fileset dir="${src.dir}" excludes="${build.classes.excludes},${excludes}" includes="${includes}"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target if="has.persistence.xml" name="-copy-persistence-xml">[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy todir="${build.classes.dir}/META-INF">[m
[32m+[m[32m            <fileset dir="${meta.inf.dir}" includes="persistence.xml orm.xml"/>[m
[32m+[m[32m        </copy>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile,-do-compile,-post-compile" description="Compile project." name="compile"/>[m
[32m+[m[32m    <target name="-pre-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-pre-pre-compile" name="-do-compile-single">[m
[32m+[m[32m        <fail unless="javac.includes">Must select some files in the IDE or set javac.includes</fail>[m
[32m+[m[32m        <j2seproject3:force-recompile/>[m
[32m+[m[32m        <j2seproject3:javac excludes="" gensrcdir="${build.generated.sources.dir}" includes="${javac.includes}" sourcepath="${src.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-post-compile-single">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,deps-jar,-verify-automatic-build,-pre-pre-compile,-pre-compile-single,-do-compile-single,-post-compile-single" name="compile-single"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                ====================[m
[32m+[m[32m                JAR BUILDING SECTION[m
[32m+[m[32m                ====================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" name="-pre-pre-jar">[m
[32m+[m[32m        <dirname file="${dist.jar}" property="dist.jar.dir"/>[m
[32m+[m[32m        <mkdir dir="${dist.jar.dir}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-pre-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive" name="-do-jar-create-manifest" unless="manifest.available">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <touch file="${tmp.manifest.file}" verbose="false"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="do.archive+manifest.available" name="-do-jar-copy-manifest">[m
[32m+[m[32m        <tempfile deleteonexit="true" destdir="${build.dir}" property="tmp.manifest.file"/>[m
[32m+[m[32m        <copy encoding="${manifest.encoding}" file="${manifest.file}" outputencoding="UTF-8" tofile="${tmp.manifest.file}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+main.class.available" name="-do-jar-set-mainclass">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Main-Class" value="${main.class}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+profile.available" name="-do-jar-set-profile">[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="Profile" value="${javac.profile}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-do-jar-create-manifest,-do-jar-copy-manifest" if="do.archive+splashscreen.available" name="-do-jar-set-splashscreen">[m
[32m+[m[32m        <basename file="${application.splash}" property="splashscreen.basename"/>[m
[32m+[m[32m        <mkdir dir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <copy failonerror="false" file="${application.splash}" todir="${build.classes.dir}/META-INF"/>[m
[32m+[m[32m        <manifest encoding="UTF-8" file="${tmp.manifest.file}" mode="update">[m
[32m+[m[32m            <attribute name="SplashScreen-Image" value="META-INF/${splashscreen.basename}"/>[m
[32m+[m[32m        </manifest>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-init-macrodef-copylibs,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.mkdist" name="-do-jar-copylibs">[m
[32m+[m[32m        <j2seproject3:copylibs manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <echo level="info">To run this application from the command line without Ant, try:</echo>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <echo level="info">java -jar "${dist.jar.resolved}"</echo>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen" if="do.archive" name="-do-jar-jar" unless="do.mkdist">[m
[32m+[m[32m        <j2seproject1:jar manifest="${tmp.manifest.file}"/>[m
[32m+[m[32m        <property location="${build.classes.dir}" name="build.classes.dir.resolved"/>[m
[32m+[m[32m        <property location="${dist.jar}" name="dist.jar.resolved"/>[m
[32m+[m[32m        <pathconvert property="run.classpath.with.dist.jar">[m
[32m+[m[32m            <path path="${run.classpath}"/>[m
[32m+[m[32m            <map from="${build.classes.dir.resolved}" to="${dist.jar.resolved}"/>[m
[32m+[m[32m        </pathconvert>[m
[32m+[m[32m        <condition else="" property="jar.usage.message" value="To run this application from the command line without Ant, try:${line.separator}${platform.java} -cp ${run.classpath.with.dist.jar} ${main.class}">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <condition else="debug" property="jar.usage.level" value="info">[m
[32m+[m[32m            <isset property="main.class.available"/>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m        <echo level="${jar.usage.level}" message="${jar.usage.message}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-do-jar-copylibs" if="do.archive" name="-do-jar-delete-manifest">[m
[32m+[m[32m        <delete>[m
[32m+[m[32m            <fileset file="${tmp.manifest.file}"/>[m
[32m+[m[32m        </delete>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-jar,-do-jar-delete-manifest" name="-do-jar-without-libraries"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-pre-jar,-pre-jar,-do-jar-create-manifest,-do-jar-copy-manifest,-do-jar-set-mainclass,-do-jar-set-profile,-do-jar-set-splashscreen,-do-jar-copylibs,-do-jar-delete-manifest" name="-do-jar-with-libraries"/>[m
[32m+[m[32m    <target name="-post-jar">[m
[32m+[m[32m        <!-- Empty placeholder for easier customization. -->[m
[32m+[m[32m        <!-- You can override this target in the ../build.xml file. -->[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar-without-libraries,-do-jar-with-libraries,-post-jar" name="-do-jar"/>[m
[32m+[m[32m    <target depends="init,compile,-pre-jar,-do-jar,-post-jar" description="Build JAR." name="jar"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                EXECUTION SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init,compile" description="Run a main class." name="run">[m
[32m+[m[32m        <j2seproject1:java>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject1:java>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target name="-do-not-recompile">[m
[32m+[m[32m        <property name="javac.includes.binary" value=""/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single" name="run-single">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single" name="run-test-with-main">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m+[m[32m        <j2seproject1:java classname="${run.class}" classpath="${run.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                DEBUGGING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger">[m
[32m+[m[32m        <j2seproject1:nbjpdastart name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-main-test">[m
[32m+[m[32m        <j2seproject1:nbjpdastart classpath="${debug.test.classpath}" name="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile" name="-debug-start-debuggee">[m
[32m+[m[32m        <j2seproject3:debug>[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg line="${application.args}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </j2seproject3:debug>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger,-debug-start-debuggee" description="Debug project in IDE." if="netbeans.home" name="debug"/>[m
[32m+[m[32m    <target depends="init" if="netbeans.home" name="-debug-start-debugger-stepinto">[m
[32m+[m[32m        <j2seproject1:nbjpdastart stopclassname="${main.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile,-debug-start-debugger-stepinto,-debug-start-debuggee" if="netbeans.home" name="debug-stepinto"/>[m
[32m+[m[32m    <target depends="init,compile-single" if="netbeans.home" name="-debug-start-debuggee-single">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-single,-debug-start-debugger,-debug-start-debuggee-single" if="netbeans.home" name="debug-single"/>[m
[32m+[m[32m    <target depends="init,compile-test-single" if="netbeans.home" name="-debug-start-debuggee-main-test">[m
[32m+[m[32m        <fail unless="debug.class">Must select one file in the IDE or set debug.class</fail>[m
[32m+[m[32m        <j2seproject3:debug classname="${debug.class}" classpath="${debug.test.classpath}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,compile-test-single,-debug-start-debugger-main-test,-debug-start-debuggee-main-test" if="netbeans.home" name="debug-test-with-main"/>[m
[32m+[m[32m    <target depends="init" name="-pre-debug-fix">[m
[32m+[m[32m        <fail unless="fix.includes">Must set fix.includes</fail>[m
[32m+[m[32m        <property name="javac.includes" value="${fix.includes}.java"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,compile-single" if="netbeans.home" name="-do-debug-fix">[m
[32m+[m[32m        <j2seproject1:nbjpdareload/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="init,-pre-debug-fix,-do-debug-fix" if="netbeans.home" name="debug-fix"/>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                =================[m
[32m+[m[32m                PROFILING SECTION[m
[32m+[m[32m                =================[m
[32m+[m[32m            -->[m
[32m+[m[32m    <!--[m
[32m+[m[32m                pre NB7.2 profiler integration[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target depends="profile-init,compile" description="Profile a project in the IDE." if="profiler.info.jvmargs.agent" name="-profile-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" description="Profile a selected class in the IDE." if="profiler.info.jvmargs.agent" name="-profile-single-pre72">[m
[32m+[m[32m        <fail unless="profile.class">Must select one file in the IDE or set profile.class</fail>[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="${profile.class}"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-single" if="profiler.info.jvmargs.agent" name="-profile-applet-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <profile classname="sun.applet.AppletViewer">[m
[32m+[m[32m            <customize>[m
[32m+[m[32m                <arg value="${applet.url}"/>[m
[32m+[m[32m            </customize>[m
[32m+[m[32m        </profile>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="profile-init,compile-test-single" if="profiler.info.jvmargs.agent" name="-profile-test-single-pre72">[m
[32m+[m[32m        <fail unless="netbeans.home">This target only works when run from inside the NetBeans IDE.</fail>[m
[32m+[m[32m        <nbprofiledirect>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m        </nbprofiledirect>[m
[32m+[m[32m        <junit dir="${profiler.info.dir}" errorproperty="tests.failed" failureproperty="tests.failed" fork="true" jvm="${profiler.info.jvm}" showoutput="true">[m
[32m+[m[32m            <env key="${profiler.info.pathvar}" path="${profiler.info.agentpath}:${profiler.current.path}"/>[m
[32m+[m[32m            <jvmarg value="${profiler.info.jvmargs.agent}"/>[m
[32m+[m[32m            <jvmarg line="${profiler.info.jvmargs}"/>[m
[32m+[m[32m            <test name="${profile.class}"/>[m
[32m+[m[32m            <classpath>[m
[32m+[m[32m                <path path="${run.test.classpath}"/>[m
[32m+[m[32m            </classpath>[m
[32m+[m[32m            <syspropertyset>[m
[32m+[m[32m                <propertyref prefix="test-sys-prop."/>[m
[32m+[m[32m                <mapper from="test-sys-prop.*" to="*" type="glob"/>[m
[32m+[m[32m            </syspropertyset>[m
[32m+[m[32m            <formatter type="brief" usefile="false"/>[m
[32m+[m[32m            <formatter type="xml"/>[m
[32m+[m[32m        </junit>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <!--[m
[32m+[m[32m                end of pre NB72 profiling section[m
[32m+[m[32m            -->[m
[32m+[m[32m    <target if="netbeans.home" name="-profile-check">[m
[32m+[m[32m        <condition property="profiler.configured">[m
[32m+[m[32m            <or>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-agentpath:"/>[m
[32m+[m[32m                <contains casesensitive="true" string="${run.jvmargs.ide}" substring="-javaagent:"/>[m
[32m+[m[32m            </or>[m
[32m+[m[32m        </condition>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-pre72" description="Profile a project in the IDE." if="profiler.configured" name="profile" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <startprofiler/>[m
[32m+[m[32m        <antcall target="run"/>[m
[32m+[m[32m    </target>[m
[32m+[m[32m    <target depends="-profile-check,-profile-single-pre72" description="Profile a selected class in the IDE." if="profiler.configured" name="profile-single" unless="profiler.info.jvmargs.agent">[m
[32m+[m[32m        <fail unless="run.class">Must select one file in the IDE or set run.class</fail>[m
[32m