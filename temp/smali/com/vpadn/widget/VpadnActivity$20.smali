.class Lcom/vpadn/widget/VpadnActivity$20;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->onVideoTrackingReplay(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/vpadn/widget/VpadnActivity;


# direct methods
.method constructor <init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 2429
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$20;->c:Lcom/vpadn/widget/VpadnActivity;

    iput-object p2, p0, Lcom/vpadn/widget/VpadnActivity$20;->a:Ljava/lang/String;

    iput p3, p0, Lcom/vpadn/widget/VpadnActivity$20;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$20;->c:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->q(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/ag;

    move-result-object v0

    .line 2432
    if-eqz v0, :cond_0

    .line 2433
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$20;->a:Ljava/lang/String;

    iget v2, p0, Lcom/vpadn/widget/VpadnActivity$20;->b:I

    invoke-interface {v0, v1, v2}, Lvpadn/ag;->onVideoTrackReplay(Ljava/lang/String;I)V

    .line 2435
    :cond_0
    return-void
.end method
