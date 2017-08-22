.class public Lvpadn/bg;
.super Landroid/widget/TextView;
.source "DetectedNativeBehaviorView.java"


# instance fields
.field private a:Lvpadn/ap;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lvpadn/ap;)V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p3, p0, Lvpadn/bg;->a:Lvpadn/ap;

    .line 17
    iput-object p2, p0, Lvpadn/bg;->b:Ljava/lang/String;

    .line 18
    const-string v0, "DetectedNativeBehaviorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call DetectedNativeBehaviorView Constructor, mUuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/bg;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const-string v0, "GONE"

    .line 25
    :cond_0
    if-nez p1, :cond_1

    const-string v0, "VISIBLE"

    .line 26
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const-string v0, "INVISIBLE"

    .line 27
    :cond_2
    const-string v1, "DetectedNativeBehaviorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DetectedNativeBehaviorView-------->visibility:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lvpadn/bg;->a:Lvpadn/ap;

    if-eqz v0, :cond_3

    .line 30
    if-nez p1, :cond_4

    .line 32
    iget-object v0, p0, Lvpadn/bg;->a:Lvpadn/ap;

    iget-object v1, p0, Lvpadn/bg;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lvpadn/ap;->d(Ljava/lang/Object;)V

    .line 37
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 38
    return-void

    .line 34
    :cond_4
    iget-object v0, p0, Lvpadn/bg;->a:Lvpadn/ap;

    iget-object v1, p0, Lvpadn/bg;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lvpadn/ap;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDetectedViewNotificationListener(Lvpadn/ap;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lvpadn/bg;->a:Lvpadn/ap;

    .line 42
    return-void
.end method
