.class public Lorg/linphone/core/LinphoneCore$GlobalState;
.super Ljava/lang/Object;
.source "LinphoneCore.java"


# static fields
.field public static GlobalConfiguring:Lorg/linphone/core/LinphoneCore$GlobalState;

.field public static GlobalOff:Lorg/linphone/core/LinphoneCore$GlobalState;

.field public static GlobalOn:Lorg/linphone/core/LinphoneCore$GlobalState;

.field public static GlobalShutdown:Lorg/linphone/core/LinphoneCore$GlobalState;

.field public static GlobalStartup:Lorg/linphone/core/LinphoneCore$GlobalState;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/LinphoneCore$GlobalState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStringValue:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->values:Ljava/util/Vector;

    .line 44
    new-instance v0, Lorg/linphone/core/LinphoneCore$GlobalState;

    const/4 v1, 0x0

    const-string/jumbo v2, "GlobalOff"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$GlobalState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalOff:Lorg/linphone/core/LinphoneCore$GlobalState;

    .line 48
    new-instance v0, Lorg/linphone/core/LinphoneCore$GlobalState;

    const/4 v1, 0x1

    const-string/jumbo v2, "GlobalStartup"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$GlobalState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalStartup:Lorg/linphone/core/LinphoneCore$GlobalState;

    .line 52
    new-instance v0, Lorg/linphone/core/LinphoneCore$GlobalState;

    const/4 v1, 0x2

    const-string/jumbo v2, "GlobalOn"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$GlobalState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalOn:Lorg/linphone/core/LinphoneCore$GlobalState;

    .line 56
    new-instance v0, Lorg/linphone/core/LinphoneCore$GlobalState;

    const/4 v1, 0x3

    const-string/jumbo v2, "GlobalShutdown"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$GlobalState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalShutdown:Lorg/linphone/core/LinphoneCore$GlobalState;

    .line 60
    new-instance v0, Lorg/linphone/core/LinphoneCore$GlobalState;

    const/4 v1, 0x4

    const-string/jumbo v2, "GlobalConfiguring"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$GlobalState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalConfiguring:Lorg/linphone/core/LinphoneCore$GlobalState;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lorg/linphone/core/LinphoneCore$GlobalState;->mValue:I

    .line 68
    sget-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 69
    iput-object p2, p0, Lorg/linphone/core/LinphoneCore$GlobalState;->mStringValue:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneCore$GlobalState;
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 74
    sget-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCore$GlobalState;

    .line 75
    iget v2, v0, Lorg/linphone/core/LinphoneCore$GlobalState;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 73
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state not found ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/linphone/core/LinphoneCore$GlobalState;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
