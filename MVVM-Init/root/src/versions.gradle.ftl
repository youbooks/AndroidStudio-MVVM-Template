ext.deps = [:]
def versions = [:]
versions.arch_core = "1.1.1"
versions.room = "1.1.1"
versions.lifecycle = "1.1.1"
versions.support = "27.1.1"
versions.dagger = "2.15"
versions.databinding = "2.3.3"
versions.junit = "4.12"
versions.espresso = "3.0.1"
versions.retrofit = "2.3.0"
versions.okhttp_logging_interceptor = "3.9.0"
versions.mockwebserver = "3.8.1"
versions.apache_commons = "2.5"
versions.mockito = "2.7.19"
versions.mockito_all = "1.10.19"
versions.dexmaker = "2.2.0"
versions.constraint_layout = "1.1.2"
versions.glide = "4.7.1"
versions.timber = "4.5.1"
versions.android_gradle_plugin = "3.1.2"
versions.rxjava2 = "2.1.3"
versions.rx_android = "2.0.1"
versions.rx_lifecycle = "2.1.0"
versions.atsl_runner = "1.0.1"
versions.atsl_rules = "1.0.1"
versions.hamcrest = "1.3"
versions.kotlin = "1.2.20"
versions.paging = "1.0.1"
versions.navigation = "1.0.0-alpha04"
versions.work = "1.0.0-alpha05"
def deps = [:]

def support = [:]
support.annotations = "com.android.support:support-annotations:$versions.support"
support.app_compat = "com.android.support:appcompat-v7:$versions.support"
support.recyclerview = "com.android.support:recyclerview-v7:$versions.support"
support.cardview = "com.android.support:cardview-v7:$versions.support"
support.design = "com.android.support:design:$versions.support"
support.v4 = "com.android.support:support-v4:$versions.support"
support.core_utils = "com.android.support:support-core-utils:$versions.support"
deps.support = support

def room = [:]
room.runtime = "android.arch.persistence.room:runtime:$versions.room"
room.compiler = "android.arch.persistence.room:compiler:$versions.room"
room.rxjava2 = "android.arch.persistence.room:rxjava2:$versions.room"
room.testing = "android.arch.persistence.room:testing:$versions.room"
deps.room = room

def lifecycle = [:]
lifecycle.runtime = "android.arch.lifecycle:runtime:$versions.lifecycle"
lifecycle.extensions = "android.arch.lifecycle:extensions:$versions.lifecycle"
lifecycle.extensions = "android.arch.lifecycle:extensions:$versions.lifecycle"
lifecycle.java8 = "android.arch.lifecycle:common-java8:$versions.lifecycle"
lifecycle.compiler = "android.arch.lifecycle:compiler:$versions.lifecycle"
deps.lifecycle = lifecycle

def arch_core = [:]
arch_core.testing = "android.arch.core:core-testing:$versions.arch_core"
deps.arch_core = arch_core

def retrofit = [:]
retrofit.runtime = "com.squareup.retrofit2:retrofit:$versions.retrofit"
retrofit.gson = "com.squareup.retrofit2:converter-gson:$versions.retrofit"
retrofit.mock = "com.squareup.retrofit2:retrofit-mock:$versions.retrofit"
retrofit.adapter = "com.squareup.retrofit2:adapter-rxjava2:$versions.retrofit"
deps.retrofit = retrofit
deps.okhttp_logging_interceptor = "com.squareup.okhttp3:logging-interceptor:$versions.okhttp_logging_interceptor"

def dagger = [:]
dagger.runtime = "com.google.dagger:dagger:$versions.dagger"
dagger.android = "com.google.dagger:dagger-android:$versions.dagger"
dagger.android_support = "com.google.dagger:dagger-android-support:$versions.dagger"
dagger.compiler = "com.google.dagger:dagger-compiler:$versions.dagger"
dagger.android_support_compiler = "com.google.dagger:dagger-android-processor:$versions.dagger"
deps.dagger = dagger

def mockito = [:]
mockito.core = "org.mockito:mockito-core:$versions.mockito"
mockito.all = "org.mockito:mockito-all:$versions.mockito_all"
deps.mockito = mockito

def kotlin = [:]
kotlin.stdlib = "org.jetbrains.kotlin:kotlin-stdlib-jre7:$versions.kotlin"
deps.kotlin = kotlin

def glide = [:]
glide.runtime = "com.github.bumptech.glide:glide:$versions.glide"
glide.compiler = "com.github.bumptech.glide:compiler:$versions.glide"
deps.glide = glide

def rxjava = [:]
rxjava.runtime = "io.reactivex.rxjava2:rxjava:$versions.rxjava2"
rxjava.rxandroid = "io.reactivex.rxjava2:rxandroid:$versions.rx_android"
deps.rxjava = rxjava

def rxlifecycle = [:]
rxlifecycle.runtime = "com.trello.rxlifecycle2:rxlifecycle:$versions.rx_lifecycle"
rxlifecycle.kotlin = "com.trello.rxlifecycle2:rxlifecycle-kotlin:$versions.rx_lifecycle"
rxlifecycle.components = "com.trello.rxlifecycle2:rxlifecycle-components:$versions.rx_lifecycle"
deps.rxlifecycle = rxlifecycle

deps.constraint_layout = "com.android.support.constraint:constraint-layout:$versions.constraint_layout"
deps.databinding = "com.android.databinding:compiler:$versions.databinding"

def build_versions = [:]
build_versions.min_sdk = 14
build_versions.target_sdk = 26
build_versions.build_tools = "27.0.3"
build_versions.support_version = versions.support
ext.build_versions = build_versions

ext.deps = deps