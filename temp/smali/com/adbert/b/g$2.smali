.class Lcom/adbert/b/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/g;->setUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/g;


# direct methods
.method constructor <init>(Lcom/adbert/b/g;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/adbert/b/g$2;->a:Lcom/adbert/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adbert/b/g$2;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/adbert/b/g$2;->a:Lcom/adbert/b/g;

    invoke-static {v0}, Lcom/adbert/b/g;->a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/adbert/b/g$a;->OnError()V

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
