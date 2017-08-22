.class Lcom/mobfox/sdk/networking/MobFoxRequest$3;
.super Ljava/lang/Object;
.source "MobFoxRequest.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;


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


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/networking/MobFoxRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/networking/MobFoxRequest;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$3;->this$0:Lcom/mobfox/sdk/networking/MobFoxRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "response"    # Ljava/io/InputStream;

    .prologue
    .line 259
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
