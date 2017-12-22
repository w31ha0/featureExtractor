.class final Lcom/ibm/icu/util/ULocale$JDKLocaleHelper$1;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fkey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4451
    iput-object p1, p0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper$1;->val$fkey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4451
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper$1;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4454
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper$1;->val$fkey:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
