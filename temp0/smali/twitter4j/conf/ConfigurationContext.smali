.class public final Ltwitter4j/conf/ConfigurationContext;
.super Ljava/lang/Object;
.source "ConfigurationContext.java"


# static fields
.field public static final CONFIGURATION_IMPL:Ljava/lang/String; = "twitter4j.configurationFactory"

.field public static final DEFAULT_CONFIGURATION_FACTORY:Ljava/lang/String; = "twitter4j.conf.PropertyConfigurationFactory"

.field private static final factory:Ltwitter4j/conf/ConfigurationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 42
    const-string v4, "twitter4j.configurationFactory"

    const-string v5, "twitter4j.conf.PropertyConfigurationFactory"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "CONFIG_IMPL":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltwitter4j/conf/ConfigurationFactory;

    sput-object v4, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 47
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 48
    .local v3, "ie":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 49
    .end local v3    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 50
    .local v2, "iae":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;

    invoke-interface {v0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
    .locals 1
    .param p0, "configTreePath"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;

    invoke-interface {v0, p0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method
