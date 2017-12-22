.class final Lorg/chromium/base/ApplicationStatus$1;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Lorg/chromium/base/BaseChromiumApplication$WindowFocusChangedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 124
    if-eqz p2, :cond_0

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    .line 128
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 129
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    goto :goto_0
.end method
