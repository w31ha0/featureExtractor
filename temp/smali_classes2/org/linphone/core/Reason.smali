.class public Lorg/linphone/core/Reason;
.super Ljava/lang/Object;
.source "Reason.java"


# static fields
.field public static AddressIncomplete:Lorg/linphone/core/Reason;

.field public static BadCredentials:Lorg/linphone/core/Reason;

.field public static BadGateway:Lorg/linphone/core/Reason;

.field public static Busy:Lorg/linphone/core/Reason;

.field public static Declined:Lorg/linphone/core/Reason;

.field public static DoNotDisturb:Lorg/linphone/core/Reason;

.field public static Gone:Lorg/linphone/core/Reason;

.field public static IOError:Lorg/linphone/core/Reason;

.field public static Media:Lorg/linphone/core/Reason;

.field public static MovedPermanently:Lorg/linphone/core/Reason;

.field public static NoMatch:Lorg/linphone/core/Reason;

.field public static NoResponse:Lorg/linphone/core/Reason;

.field public static None:Lorg/linphone/core/Reason;

.field public static NotAcceptable:Lorg/linphone/core/Reason;

.field public static NotAnswered:Lorg/linphone/core/Reason;

.field public static NotFound:Lorg/linphone/core/Reason;

.field public static NotImplemented:Lorg/linphone/core/Reason;

.field public static ServerTimeout:Lorg/linphone/core/Reason;

.field public static TemporarilyUnavailable:Lorg/linphone/core/Reason;

.field public static Unauthorized:Lorg/linphone/core/Reason;

.field public static Unknown:Lorg/linphone/core/Reason;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStringValue:Ljava/lang/String;

.field protected final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/Reason;->values:Ljava/util/Vector;

    .line 10
    new-instance v0, Lorg/linphone/core/Reason;

    const/4 v1, 0x0

    const-string/jumbo v2, "None"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->None:Lorg/linphone/core/Reason;

    .line 14
    new-instance v0, Lorg/linphone/core/Reason;

    const/4 v1, 0x1

    const-string/jumbo v2, "NoResponse"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->NoResponse:Lorg/linphone/core/Reason;

    .line 18
    new-instance v0, Lorg/linphone/core/Reason;

    const/4 v1, 0x2

    const-string/jumbo v2, "BadCredentials"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->BadCredentials:Lorg/linphone/core/Reason;

    .line 22
    new-instance v0, Lorg/linphone/core/Reason;

    const/4 v1, 0x3

    const-string/jumbo v2, "Declined"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->Declined:Lorg/linphone/core/Reason;

    .line 26
    new-instance v0, Lorg/linphone/core/Reason;

    const/4 v1, 0x4

    const-string/jumbo v2, "NotFound"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->NotFound:Lorg/linphone/core/Reason;

    .line 30
    new-instance v0, Lorg/linphone/core/Reason;

    const/4 v1, 0x5

    const-string/jumbo v2, "NotAnswered"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->NotAnswered:Lorg/linphone/core/Reason;

    .line 34
    new-instance v0, Lorg/linphone/core/Reason;

    const/4 v1, 0x6

    const-string/jumbo v2, "Busy"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->Busy:Lorg/linphone/core/Reason;

    .line 38
    new-instance v0, Lorg/linphone/core/Reason;

    const/4 v1, 0x7

    const-string/jumbo v2, "Media"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->Media:Lorg/linphone/core/Reason;

    .line 42
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0x8

    const-string/jumbo v2, "IOError"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->IOError:Lorg/linphone/core/Reason;

    .line 46
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0x9

    const-string/jumbo v2, "DoNotDisturb"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->DoNotDisturb:Lorg/linphone/core/Reason;

    .line 50
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0xa

    const-string/jumbo v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->Unauthorized:Lorg/linphone/core/Reason;

    .line 54
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0xb

    const-string/jumbo v2, "NotAcceptable"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->NotAcceptable:Lorg/linphone/core/Reason;

    .line 58
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0xc

    const-string/jumbo v2, "NoMatch"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->NoMatch:Lorg/linphone/core/Reason;

    .line 62
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0xd

    const-string/jumbo v2, "MovedPermanently"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->MovedPermanently:Lorg/linphone/core/Reason;

    .line 66
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0xe

    const-string/jumbo v2, "Gone"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->Gone:Lorg/linphone/core/Reason;

    .line 70
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0xf

    const-string/jumbo v2, "TemporarilyUnavailable"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->TemporarilyUnavailable:Lorg/linphone/core/Reason;

    .line 74
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0x10

    const-string/jumbo v2, "AddressIncomplete"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->AddressIncomplete:Lorg/linphone/core/Reason;

    .line 78
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0x11

    const-string/jumbo v2, "NotImplemented"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->NotImplemented:Lorg/linphone/core/Reason;

    .line 82
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0x12

    const-string/jumbo v2, "BadGateway"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->BadGateway:Lorg/linphone/core/Reason;

    .line 86
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0x13

    const-string/jumbo v2, "ServerTimeout"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->ServerTimeout:Lorg/linphone/core/Reason;

    .line 90
    new-instance v0, Lorg/linphone/core/Reason;

    const/16 v1, 0x14

    const-string/jumbo v2, "Unknown"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/Reason;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/Reason;->Unknown:Lorg/linphone/core/Reason;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lorg/linphone/core/Reason;->mValue:I

    .line 98
    sget-object v0, Lorg/linphone/core/Reason;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    iput-object p2, p0, Lorg/linphone/core/Reason;->mStringValue:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/Reason;
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/Reason;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 103
    sget-object v0, Lorg/linphone/core/Reason;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/Reason;

    .line 104
    iget v2, v0, Lorg/linphone/core/Reason;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 102
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reason not found ["

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
    .line 110
    iget-object v0, p0, Lorg/linphone/core/Reason;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
