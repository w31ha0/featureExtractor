.class public Lorg/linphone/core/LinphoneCore$UpnpState;
.super Ljava/lang/Object;
.source "LinphoneCore.java"


# static fields
.field public static Adding:Lorg/linphone/core/LinphoneCore$UpnpState;

.field public static Blacklisted:Lorg/linphone/core/LinphoneCore$UpnpState;

.field public static Idle:Lorg/linphone/core/LinphoneCore$UpnpState;

.field public static Ko:Lorg/linphone/core/LinphoneCore$UpnpState;

.field public static NotAvailable:Lorg/linphone/core/LinphoneCore$UpnpState;

.field public static Ok:Lorg/linphone/core/LinphoneCore$UpnpState;

.field public static Pending:Lorg/linphone/core/LinphoneCore$UpnpState;

.field public static Removing:Lorg/linphone/core/LinphoneCore$UpnpState;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/LinphoneCore$UpnpState;",
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
    .line 472
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->values:Ljava/util/Vector;

    .line 476
    new-instance v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    const/4 v1, 0x0

    const-string/jumbo v2, "Idle"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$UpnpState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->Idle:Lorg/linphone/core/LinphoneCore$UpnpState;

    .line 480
    new-instance v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    const/4 v1, 0x1

    const-string/jumbo v2, "Pending"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$UpnpState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->Pending:Lorg/linphone/core/LinphoneCore$UpnpState;

    .line 484
    new-instance v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    const/4 v1, 0x2

    const-string/jumbo v2, "Adding"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$UpnpState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->Adding:Lorg/linphone/core/LinphoneCore$UpnpState;

    .line 488
    new-instance v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    const/4 v1, 0x3

    const-string/jumbo v2, "Removing"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$UpnpState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->Removing:Lorg/linphone/core/LinphoneCore$UpnpState;

    .line 492
    new-instance v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    const/4 v1, 0x4

    const-string/jumbo v2, "Not available"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$UpnpState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->NotAvailable:Lorg/linphone/core/LinphoneCore$UpnpState;

    .line 496
    new-instance v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    const/4 v1, 0x5

    const-string/jumbo v2, "Ok"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$UpnpState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->Ok:Lorg/linphone/core/LinphoneCore$UpnpState;

    .line 500
    new-instance v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    const/4 v1, 0x6

    const-string/jumbo v2, "Ko"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$UpnpState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->Ko:Lorg/linphone/core/LinphoneCore$UpnpState;

    .line 504
    new-instance v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    const/4 v1, 0x7

    const-string/jumbo v2, "Blacklisted"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$UpnpState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->Blacklisted:Lorg/linphone/core/LinphoneCore$UpnpState;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput p1, p0, Lorg/linphone/core/LinphoneCore$UpnpState;->mValue:I

    .line 511
    sget-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 512
    iput-object p2, p0, Lorg/linphone/core/LinphoneCore$UpnpState;->mStringValue:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneCore$UpnpState;
    .locals 3

    .prologue
    .line 515
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 516
    sget-object v0, Lorg/linphone/core/LinphoneCore$UpnpState;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCore$UpnpState;

    .line 517
    iget v2, v0, Lorg/linphone/core/LinphoneCore$UpnpState;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 515
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 519
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpnpState not found ["

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
    .line 522
    iget-object v0, p0, Lorg/linphone/core/LinphoneCore$UpnpState;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
