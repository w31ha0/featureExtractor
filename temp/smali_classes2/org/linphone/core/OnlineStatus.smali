.class public Lorg/linphone/core/OnlineStatus;
.super Ljava/lang/Object;
.source "OnlineStatus.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static Away:Lorg/linphone/core/OnlineStatus;

.field public static BeRightBack:Lorg/linphone/core/OnlineStatus;

.field public static Busy:Lorg/linphone/core/OnlineStatus;

.field public static DoNotDisturb:Lorg/linphone/core/OnlineStatus;

.field public static Offline:Lorg/linphone/core/OnlineStatus;

.field public static OnThePhone:Lorg/linphone/core/OnlineStatus;

.field public static Online:Lorg/linphone/core/OnlineStatus;

.field public static OutToLunch:Lorg/linphone/core/OnlineStatus;

.field public static Pending:Lorg/linphone/core/OnlineStatus;

.field public static StatusAltService:Lorg/linphone/core/OnlineStatus;

.field public static StatusMoved:Lorg/linphone/core/OnlineStatus;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/OnlineStatus;",
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
    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->values:Ljava/util/Vector;

    .line 36
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/4 v1, 0x0

    const-string/jumbo v2, "Offline"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->Offline:Lorg/linphone/core/OnlineStatus;

    .line 40
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/4 v1, 0x1

    const-string/jumbo v2, "Online"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->Online:Lorg/linphone/core/OnlineStatus;

    .line 44
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/4 v1, 0x2

    const-string/jumbo v2, "Busy"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->Busy:Lorg/linphone/core/OnlineStatus;

    .line 48
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/4 v1, 0x3

    const-string/jumbo v2, "BeRightBack"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->BeRightBack:Lorg/linphone/core/OnlineStatus;

    .line 52
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/4 v1, 0x4

    const-string/jumbo v2, "Away"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->Away:Lorg/linphone/core/OnlineStatus;

    .line 56
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/4 v1, 0x5

    const-string/jumbo v2, "OnThePhone"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->OnThePhone:Lorg/linphone/core/OnlineStatus;

    .line 60
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/4 v1, 0x6

    const-string/jumbo v2, "OutToLunch "

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->OutToLunch:Lorg/linphone/core/OnlineStatus;

    .line 64
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/4 v1, 0x7

    const-string/jumbo v2, "DoNotDisturb"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->DoNotDisturb:Lorg/linphone/core/OnlineStatus;

    .line 68
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/16 v1, 0x8

    const-string/jumbo v2, "StatusMoved"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->StatusMoved:Lorg/linphone/core/OnlineStatus;

    .line 72
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/16 v1, 0x9

    const-string/jumbo v2, "StatusAltService"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->StatusAltService:Lorg/linphone/core/OnlineStatus;

    .line 76
    new-instance v0, Lorg/linphone/core/OnlineStatus;

    const/16 v1, 0xa

    const-string/jumbo v2, "Pending"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/OnlineStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/OnlineStatus;->Pending:Lorg/linphone/core/OnlineStatus;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lorg/linphone/core/OnlineStatus;->mValue:I

    .line 84
    sget-object v0, Lorg/linphone/core/OnlineStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    iput-object p2, p0, Lorg/linphone/core/OnlineStatus;->mStringValue:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/OnlineStatus;
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/OnlineStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 89
    sget-object v0, Lorg/linphone/core/OnlineStatus;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/OnlineStatus;

    .line 90
    iget v2, v0, Lorg/linphone/core/OnlineStatus;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 88
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
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
    .line 96
    iget-object v0, p0, Lorg/linphone/core/OnlineStatus;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
