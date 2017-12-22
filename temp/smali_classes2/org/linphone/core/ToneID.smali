.class public final enum Lorg/linphone/core/ToneID;
.super Ljava/lang/Enum;
.source "ToneID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/linphone/core/ToneID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/ToneID;

.field public static final enum Busy:Lorg/linphone/core/ToneID;

.field public static final enum CallLost:Lorg/linphone/core/ToneID;

.field public static final enum CallOnHold:Lorg/linphone/core/ToneID;

.field public static final enum CallWaiting:Lorg/linphone/core/ToneID;

.field public static final enum Undefined:Lorg/linphone/core/ToneID;


# instance fields
.field protected final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lorg/linphone/core/ToneID;

    const-string/jumbo v1, "Undefined"

    invoke-direct {v0, v1, v2, v2}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->Undefined:Lorg/linphone/core/ToneID;

    .line 5
    new-instance v0, Lorg/linphone/core/ToneID;

    const-string/jumbo v1, "Busy"

    invoke-direct {v0, v1, v3, v3}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->Busy:Lorg/linphone/core/ToneID;

    .line 6
    new-instance v0, Lorg/linphone/core/ToneID;

    const-string/jumbo v1, "CallWaiting"

    invoke-direct {v0, v1, v4, v4}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->CallWaiting:Lorg/linphone/core/ToneID;

    .line 7
    new-instance v0, Lorg/linphone/core/ToneID;

    const-string/jumbo v1, "CallOnHold"

    invoke-direct {v0, v1, v5, v5}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->CallOnHold:Lorg/linphone/core/ToneID;

    .line 8
    new-instance v0, Lorg/linphone/core/ToneID;

    const-string/jumbo v1, "CallLost"

    invoke-direct {v0, v1, v6, v6}, Lorg/linphone/core/ToneID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/ToneID;->CallLost:Lorg/linphone/core/ToneID;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/linphone/core/ToneID;

    sget-object v1, Lorg/linphone/core/ToneID;->Undefined:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/ToneID;->Busy:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/ToneID;->CallWaiting:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v4

    sget-object v1, Lorg/linphone/core/ToneID;->CallOnHold:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v5

    sget-object v1, Lorg/linphone/core/ToneID;->CallLost:Lorg/linphone/core/ToneID;

    aput-object v1, v0, v6

    sput-object v0, Lorg/linphone/core/ToneID;->$VALUES:[Lorg/linphone/core/ToneID;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lorg/linphone/core/ToneID;->mValue:I

    .line 12
    return-void
.end method

.method protected static fromInt(I)Lorg/linphone/core/ToneID;
    .locals 3

    .prologue
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 21
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled enum value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for LinphoneToneID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_0
    sget-object v0, Lorg/linphone/core/ToneID;->Undefined:Lorg/linphone/core/ToneID;

    .line 19
    :goto_0
    return-object v0

    .line 16
    :pswitch_1
    sget-object v0, Lorg/linphone/core/ToneID;->Busy:Lorg/linphone/core/ToneID;

    goto :goto_0

    .line 17
    :pswitch_2
    sget-object v0, Lorg/linphone/core/ToneID;->CallWaiting:Lorg/linphone/core/ToneID;

    goto :goto_0

    .line 18
    :pswitch_3
    sget-object v0, Lorg/linphone/core/ToneID;->CallOnHold:Lorg/linphone/core/ToneID;

    goto :goto_0

    .line 19
    :pswitch_4
    sget-object v0, Lorg/linphone/core/ToneID;->CallLost:Lorg/linphone/core/ToneID;

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/ToneID;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/linphone/core/ToneID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/ToneID;

    return-object v0
.end method

.method public static values()[Lorg/linphone/core/ToneID;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/linphone/core/ToneID;->$VALUES:[Lorg/linphone/core/ToneID;

    invoke-virtual {v0}, [Lorg/linphone/core/ToneID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/ToneID;

    return-object v0
.end method
