.class Lcom/mobfox/sdk/networking/MobFoxRequest$4;
.super Ljava/lang/Object;
.source "MobFoxRequest.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/networking/MobFoxRequest;->getBitmap(Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/networking/MobFoxRequest;

.field final synthetic val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/networking/MobFoxRequest;Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/networking/MobFoxRequest;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$4;->this$0:Lcom/mobfox/sdk/networking/MobFoxRequest;

    iput-object p2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$4;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;

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
    .line 264
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$4;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;

    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "response":Ljava/lang/Object;
    invoke-interface {v0, p1, p2, p3}, Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;->onComplete(ILandroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 265
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$4;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;->onError(Ljava/lang/Exception;)V

    .line 270
    return-void
.end method
