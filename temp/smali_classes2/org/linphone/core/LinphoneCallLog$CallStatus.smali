.class public Lorg/linphone/core/LinphoneCallLog$CallStatus;
.super Ljava/lang/Object;
.source "LinphoneCallLog.java"


# static fields
.field public static final Aborted:Lorg/linphone/core/LinphoneCallLog$CallStatus;

.field public static final Declined:Lorg/linphone/core/LinphoneCallLog$CallStatus;

.field public static final Missed:Lorg/linphone/core/LinphoneCallLog$CallStatus;

.field public static final Success:Lorg/linphone/core/LinphoneCallLog$CallStatus;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/LinphoneCallLog$CallStatus;",
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
    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->values:Ljava/util/Vector;

    .line 45
    new-instance v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;

    const/4 v1, 0x0

    const-string/jumbo v2, "Sucess"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCallLog$CallStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->Success:Lorg/linphone/core/LinphoneCallLog$CallStatus;

    .line 49
    new-instance v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;

    const/4 v1, 0x1

    const-string/jumbo v2, "Aborted"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCallLog$CallStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->Aborted:Lorg/linphone/core/LinphoneCallLog$CallStatus;

    .line 53
    new-instance v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;

    const/4 v1, 0x2

    const-string/jumbo v2, "Missed"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCallLog$CallStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->Missed:Lorg/linphone/core/LinphoneCallLog$CallStatus;

    .line 57
    new-instance v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;

    const/4 v1, 0x3

    const-string/jumbo v2, "Declined"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCallLog$CallStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->Declined:Lorg/linphone/core/LinphoneCallLog$CallStatus;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->mValue:I

    .line 62
    sget-object v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 63
    iput-object p2, p0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->mStringValue:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneCallLog$CallStatus;
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 68
    sget-object v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;

    .line 69
    iget v2, v0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 67
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CallStatus not found ["

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
.method public toInt()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallLog$CallStatus;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
