.class Lcom/vpadn/widget/VpadnActivity$21;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->onVideoTrackingProgressTime(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/vpadn/widget/VpadnActivity;


# direct methods
.method constructor <init>(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 2441
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$21;->d:Lcom/vpadn/widget/VpadnActivity;

    iput-object p2, p0, Lcom/vpadn/widget/VpadnActivity$21;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vpadn/widget/VpadnActivity$21;->b:Ljava/lang/String;

    iput p4, p0, Lcom/vpadn/widget/VpadnActivity$21;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$21;->d:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->q(Lcom/vpadn/widget/VpadnActivity;)Lvpadn/ag;

    move-result-object v0

    .line 2444
    if-eqz v0, :cond_0

    .line 2445
    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$21;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vpadn/widget/VpadnActivity$21;->b:Ljava/lang/String;

    iget v3, p0, Lcom/vpadn/widget/VpadnActivity$21;->c:I

    invoke-interface {v0, v1, v2, v3}, Lvpadn/ag;->onVideoTrackProgressTime(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2447
    :cond_0
    return-void
.end method
