.class final Lcom/mobfox/sdk/dmp/DMPManager$1;
.super Ljava/lang/Object;
.source "DMPManager.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/dmp/DMPManager;->postDMP(Landroid/content/Context;Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mobfox/sdk/dmp/DMPManager$1;->val$cb:Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "response"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/mobfox/sdk/dmp/DMPManager$1;->val$cb:Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mobfox/sdk/dmp/DMPManager$1;->val$cb:Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;

    invoke-interface {v0}, Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;->onPostCompleted()V

    .line 53
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mobfox/sdk/dmp/DMPManager$1;->val$cb:Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/mobfox/sdk/dmp/DMPManager$1;->val$cb:Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;

    invoke-interface {v0}, Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;->onPostError()V

    .line 61
    :cond_0
    return-void
.end method
