.class public Lorg/linphone/core/LinphoneChatMessage$State;
.super Ljava/lang/Object;
.source "LinphoneChatMessage.java"


# static fields
.field public static final Delivered:Lorg/linphone/core/LinphoneChatMessage$State;

.field public static final DeliveredToUser:Lorg/linphone/core/LinphoneChatMessage$State;

.field public static final Displayed:Lorg/linphone/core/LinphoneChatMessage$State;

.field public static final FileTransferDone:Lorg/linphone/core/LinphoneChatMessage$State;

.field public static final FileTransferError:Lorg/linphone/core/LinphoneChatMessage$State;

.field public static final Idle:Lorg/linphone/core/LinphoneChatMessage$State;

.field public static final InProgress:Lorg/linphone/core/LinphoneChatMessage$State;

.field public static final NotDelivered:Lorg/linphone/core/LinphoneChatMessage$State;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/LinphoneChatMessage$State;",
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

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->values:Ljava/util/Vector;

    .line 48
    new-instance v0, Lorg/linphone/core/LinphoneChatMessage$State;

    const/4 v1, 0x0

    const-string/jumbo v2, "Idle"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneChatMessage$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->Idle:Lorg/linphone/core/LinphoneChatMessage$State;

    .line 52
    new-instance v0, Lorg/linphone/core/LinphoneChatMessage$State;

    const/4 v1, 0x1

    const-string/jumbo v2, "InProgress"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneChatMessage$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->InProgress:Lorg/linphone/core/LinphoneChatMessage$State;

    .line 56
    new-instance v0, Lorg/linphone/core/LinphoneChatMessage$State;

    const/4 v1, 0x2

    const-string/jumbo v2, "Delivered"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneChatMessage$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->Delivered:Lorg/linphone/core/LinphoneChatMessage$State;

    .line 60
    new-instance v0, Lorg/linphone/core/LinphoneChatMessage$State;

    const/4 v1, 0x3

    const-string/jumbo v2, "NotDelivered"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneChatMessage$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->NotDelivered:Lorg/linphone/core/LinphoneChatMessage$State;

    .line 64
    new-instance v0, Lorg/linphone/core/LinphoneChatMessage$State;

    const/4 v1, 0x4

    const-string/jumbo v2, "FileTransferError"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneChatMessage$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->FileTransferError:Lorg/linphone/core/LinphoneChatMessage$State;

    .line 68
    new-instance v0, Lorg/linphone/core/LinphoneChatMessage$State;

    const/4 v1, 0x5

    const-string/jumbo v2, "FileTransferDone"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneChatMessage$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->FileTransferDone:Lorg/linphone/core/LinphoneChatMessage$State;

    .line 72
    new-instance v0, Lorg/linphone/core/LinphoneChatMessage$State;

    const/4 v1, 0x6

    const-string/jumbo v2, "DeliveredToUser"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneChatMessage$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->DeliveredToUser:Lorg/linphone/core/LinphoneChatMessage$State;

    .line 76
    new-instance v0, Lorg/linphone/core/LinphoneChatMessage$State;

    const/4 v1, 0x7

    const-string/jumbo v2, "Displayed"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneChatMessage$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->Displayed:Lorg/linphone/core/LinphoneChatMessage$State;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lorg/linphone/core/LinphoneChatMessage$State;->mValue:I

    .line 80
    sget-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 81
    iput-object p2, p0, Lorg/linphone/core/LinphoneChatMessage$State;->mStringValue:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneChatMessage$State;
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 87
    sget-object v0, Lorg/linphone/core/LinphoneChatMessage$State;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneChatMessage$State;

    .line 88
    iget v2, v0, Lorg/linphone/core/LinphoneChatMessage$State;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 86
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
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
.method public toInt()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/linphone/core/LinphoneChatMessage$State;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/linphone/core/LinphoneChatMessage$State;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/linphone/core/LinphoneChatMessage$State;->mValue:I

    return v0
.end method
