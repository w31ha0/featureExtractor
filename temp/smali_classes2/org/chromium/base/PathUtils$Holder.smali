.class Lorg/chromium/base/PathUtils$Holder;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field private static final DIRECTORY_PATHS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lorg/chromium/base/PathUtils;->access$000()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/PathUtils$Holder;->DIRECTORY_PATHS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/chromium/base/PathUtils$Holder;->DIRECTORY_PATHS:[Ljava/lang/String;

    return-object v0
.end method
