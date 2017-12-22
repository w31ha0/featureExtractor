.class final Lcom/ibm/icu/impl/ICUData$3;
.super Ljava/lang/Object;
.source "ICUData.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUData$3;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUData$3;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUData$3;->val$loader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUData$3;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUData$3;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
