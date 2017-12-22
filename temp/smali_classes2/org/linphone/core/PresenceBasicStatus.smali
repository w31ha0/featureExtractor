.class public final enum Lorg/linphone/core/PresenceBasicStatus;
.super Ljava/lang/Enum;
.source "PresenceBasicStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/linphone/core/PresenceBasicStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/PresenceBasicStatus;

.field public static final enum Closed:Lorg/linphone/core/PresenceBasicStatus;

.field public static final enum Invalid:Lorg/linphone/core/PresenceBasicStatus;

.field public static final enum Open:Lorg/linphone/core/PresenceBasicStatus;


# instance fields
.field protected final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/linphone/core/PresenceBasicStatus;

    const-string/jumbo v1, "Open"

    invoke-direct {v0, v1, v2, v2}, Lorg/linphone/core/PresenceBasicStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceBasicStatus;->Open:Lorg/linphone/core/PresenceBasicStatus;

    .line 27
    new-instance v0, Lorg/linphone/core/PresenceBasicStatus;

    const-string/jumbo v1, "Closed"

    invoke-direct {v0, v1, v3, v3}, Lorg/linphone/core/PresenceBasicStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceBasicStatus;->Closed:Lorg/linphone/core/PresenceBasicStatus;

    .line 28
    new-instance v0, Lorg/linphone/core/PresenceBasicStatus;

    const-string/jumbo v1, "Invalid"

    invoke-direct {v0, v1, v4, v4}, Lorg/linphone/core/PresenceBasicStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceBasicStatus;->Invalid:Lorg/linphone/core/PresenceBasicStatus;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/linphone/core/PresenceBasicStatus;

    sget-object v1, Lorg/linphone/core/PresenceBasicStatus;->Open:Lorg/linphone/core/PresenceBasicStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/PresenceBasicStatus;->Closed:Lorg/linphone/core/PresenceBasicStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/PresenceBasicStatus;->Invalid:Lorg/linphone/core/PresenceBasicStatus;

    aput-object v1, v0, v4

    sput-object v0, Lorg/linphone/core/PresenceBasicStatus;->$VALUES:[Lorg/linphone/core/PresenceBasicStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lorg/linphone/core/PresenceBasicStatus;->mValue:I

    .line 34
    return-void
.end method

.method protected static fromInt(I)Lorg/linphone/core/PresenceBasicStatus;
    .locals 1

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 44
    sget-object v0, Lorg/linphone/core/PresenceBasicStatus;->Invalid:Lorg/linphone/core/PresenceBasicStatus;

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    sget-object v0, Lorg/linphone/core/PresenceBasicStatus;->Open:Lorg/linphone/core/PresenceBasicStatus;

    goto :goto_0

    .line 43
    :pswitch_1
    sget-object v0, Lorg/linphone/core/PresenceBasicStatus;->Closed:Lorg/linphone/core/PresenceBasicStatus;

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/PresenceBasicStatus;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/linphone/core/PresenceBasicStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceBasicStatus;

    return-object v0
.end method

.method public static values()[Lorg/linphone/core/PresenceBasicStatus;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/linphone/core/PresenceBasicStatus;->$VALUES:[Lorg/linphone/core/PresenceBasicStatus;

    invoke-virtual {v0}, [Lorg/linphone/core/PresenceBasicStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/PresenceBasicStatus;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/linphone/core/PresenceBasicStatus;->mValue:I

    return v0
.end method
