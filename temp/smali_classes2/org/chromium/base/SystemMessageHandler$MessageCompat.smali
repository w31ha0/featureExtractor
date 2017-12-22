.class Lorg/chromium/base/SystemMessageHandler$MessageCompat;
.super Ljava/lang/Object;
.source "SystemMessageHandler.java"


# static fields
.field static final IMPL:Lorg/chromium/base/SystemMessageHandler$MessageCompat$MessageWrapperImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Lorg/chromium/base/SystemMessageHandler$MessageCompat$LollipopMr1MessageWrapperImpl;

    invoke-direct {v0}, Lorg/chromium/base/SystemMessageHandler$MessageCompat$LollipopMr1MessageWrapperImpl;-><init>()V

    sput-object v0, Lorg/chromium/base/SystemMessageHandler$MessageCompat;->IMPL:Lorg/chromium/base/SystemMessageHandler$MessageCompat$MessageWrapperImpl;

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lorg/chromium/base/SystemMessageHandler$MessageCompat$LegacyMessageWrapperImpl;

    invoke-direct {v0}, Lorg/chromium/base/SystemMessageHandler$MessageCompat$LegacyMessageWrapperImpl;-><init>()V

    sput-object v0, Lorg/chromium/base/SystemMessageHandler$MessageCompat;->IMPL:Lorg/chromium/base/SystemMessageHandler$MessageCompat$MessageWrapperImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/chromium/base/SystemMessageHandler$MessageCompat;->IMPL:Lorg/chromium/base/SystemMessageHandler$MessageCompat$MessageWrapperImpl;

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/SystemMessageHandler$MessageCompat$MessageWrapperImpl;->setAsynchronous(Landroid/os/Message;Z)V

    .line 89
    return-void
.end method
