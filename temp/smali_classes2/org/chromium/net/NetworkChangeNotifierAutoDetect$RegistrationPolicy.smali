.class public abstract Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 568
    const-class v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract destroy()V
.end method

.method protected init(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 593
    return-void
.end method

.method protected final register()V
    .locals 1

    .prologue
    .line 575
    sget-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->register()V

    .line 577
    return-void
.end method

.method protected final unregister()V
    .locals 1

    .prologue
    .line 583
    sget-boolean v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 584
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->unregister()V

    .line 585
    return-void
.end method
