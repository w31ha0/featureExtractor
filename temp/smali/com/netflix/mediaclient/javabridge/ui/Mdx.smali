.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/Mdx;
.super Ljava/lang/Object;
.source "Mdx.java"


# static fields
.field public static final BOTH:Ljava/lang/String; = "BOTH"

.field public static final COMPLETE:Ljava/lang/String; = "COMPLETE"

.field public static final CONTROLLER:Ljava/lang/String; = "CONTROLLER"

.field public static final MDX_ERR_NETWORK:Ljava/lang/String; = "3"

.field public static final MDX_ERR_NOT_PAIRED:Ljava/lang/String; = "12"

.field public static final MDX_ERR_NO_CTICKET:Ljava/lang/String; = "13"

.field public static final MDX_ERR_PAIRING_NO_MATCH:Ljava/lang/String; = "10"

.field public static final MDX_ERR_PORT:Ljava/lang/String; = "2"

.field public static final MDX_ERR_SESSION_DECRYPTION_FAILED:Ljava/lang/String; = "6"

.field public static final MDX_ERR_SESSION_INVALID_HMAC:Ljava/lang/String; = "5"

.field public static final MDX_ERR_SESSION_INVALID_SID:Ljava/lang/String; = "11"

.field public static final MDX_ERR_SSDP:Ljava/lang/String; = "1"

.field public static final MDX_ERR_VERSION:Ljava/lang/String; = "4"

.field public static final MDX_LAUNCHED:I = 0x1

.field public static final MDX_NOTLAUNCHED:I = 0x0

.field public static final MDX_PAIRING_ALREADY_PAIRED:Ljava/lang/String; = "31"

.field public static final MDX_PAIRING_CONTROLLER_CTICKET_CORRUPTED:Ljava/lang/String; = "22"

.field public static final MDX_PAIRING_CONTROLLER_CTICKET_EXPIRED:Ljava/lang/String; = "21"

.field public static final MDX_PAIRING_CONTROLLER_HMAC_FAILURE:Ljava/lang/String; = "20"

.field public static final MDX_PAIRING_INVALID_CONTROLLER_REQUEST:Ljava/lang/String; = "10"

.field public static final MDX_PAIRING_NETWORK_ERROR:Ljava/lang/String; = "99"

.field public static final MDX_PAIRING_NOT_PAIRING:Ljava/lang/String; = "30"

.field public static final MDX_PAIRING_NO_ERROR:Ljava/lang/String; = "0"

.field public static final MDX_PAIRING_PROFILE_MISMATCH:Ljava/lang/String; = "PROFILE_MISMATCH"

.field public static final MDX_PAIRING_SERVER_ERROR:Ljava/lang/String; = "11"

.field public static final MDX_PAIRING_SERVER_NOT_REACHABLE:Ljava/lang/String; = "13"

.field public static final MDX_PAIRING_TARGET_ERROR:Ljava/lang/String; = "12"

.field public static final MDX_PAIRING_UNKNOWN_VERSION:Ljava/lang/String; = "1"

.field public static final MDX_PAIRING_USER_MISMATCH:Ljava/lang/String; = "USER_MISMATCH"

.field public static final MDX_PAIRING_USER_PAIRING_FAILED:Ljava/lang/String; = "PAIRING_FAILED"

.field public static final MDX_REGISTRATION_ALREADY_REGISTERED:Ljava/lang/String; = "41"

.field public static final MDX_REGISTRATION_DEFAULT_PIN:I = 0x2

.field public static final MDX_REGISTRATION_DISABLED:I = 0x0

.field public static final MDX_REGISTRATION_ENABLED:I = 0x1

.field public static final MDX_REGISTRATION_NOT_REGISTERING:Ljava/lang/String; = "40"

.field public static final MDX_REGISTRATION_PAIRING_IN_PROGRESS:Ljava/lang/String; = "42"

.field public static final MDX_REGISTRATION_PIN_MISMATCH:Ljava/lang/String; = "43"

.field public static final MDX_SESSION_DECRYPTION_FAILED:Ljava/lang/String; = "6"

.field public static final MDX_SESSION_INVALID_HMAC:Ljava/lang/String; = "5"

.field public static final MDX_SESSION_INVALID_NONCE:Ljava/lang/String; = "4"

.field public static final MDX_SESSION_INVALID_SID:Ljava/lang/String; = "11"

.field public static final MDX_SESSION_NETWORK_ERROR:Ljava/lang/String; = "10"

.field public static final MDX_SESSION_UNKNOWN_RECEIVER:Ljava/lang/String; = "3"

.field public static final MDX_SESSION_UNKNOWN_RECEIVER_USERID:Ljava/lang/String; = "9"

.field public static final MDX_SESSION_UNKNOWN_SENDER:Ljava/lang/String; = "2"

.field public static final MDX_SESSION_UNKNOWN_SENDER_USERID:Ljava/lang/String; = "8"

.field public static final MDX_SESSION_UNKNOWN_VERSION:Ljava/lang/String; = "1"

.field public static final NAME:Ljava/lang/String; = "mdx"

.field public static final PATH:Ljava/lang/String; = "nrdp.mdx"

.field public static final TARGET:Ljava/lang/String; = "TARGET"


# virtual methods
.method public abstract addEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract clearDeviceMap()V
.end method

.method public abstract exit()V
.end method

.method public abstract removeEventListener(Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method
