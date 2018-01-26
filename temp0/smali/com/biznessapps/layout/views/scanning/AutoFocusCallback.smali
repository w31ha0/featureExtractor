.class final Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;
.super Ljava/lang/Object;
.source "AutoFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final AUTOFOCUS_INTERVAL_MS:J = 0x5dcL

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusHandler:Landroid/os/Handler;

.field private autoFocusMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->autoFocusMessage:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 59
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    .line 64
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v1, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->TAG:Ljava/lang/String;

    const-string v2, "Got auto-focus callback, but no handler for it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setHandler(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "autoFocusHandler"    # Landroid/os/Handler;
    .param p2, "autoFocusMessage"    # I

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->autoFocusHandler:Landroid/os/Handler;

    .line 45
    iput p2, p0, Lcom/biznessapps/layout/views/scanning/AutoFocusCallback;->autoFocusMessage:I

    .line 46
    return-void
.end method
