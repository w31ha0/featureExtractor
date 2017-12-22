.class Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;
.super Ljava/lang/Object;
.source "ResourceBundleWrapper.java"

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
.field final synthetic this$0:Lcom/ibm/icu/impl/ResourceBundleWrapper$2;

.field final synthetic val$resName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ResourceBundleWrapper$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;->this$0:Lcom/ibm/icu/impl/ResourceBundleWrapper$2;

    iput-object p2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;->val$resName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;->this$0:Lcom/ibm/icu/impl/ResourceBundleWrapper$2;

    iget-object v0, v0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;->val$resName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ResourceBundleWrapper$2$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
