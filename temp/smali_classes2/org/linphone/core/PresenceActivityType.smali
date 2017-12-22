.class public final enum Lorg/linphone/core/PresenceActivityType;
.super Ljava/lang/Enum;
.source "PresenceActivityType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/linphone/core/PresenceActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/PresenceActivityType;

.field public static final enum Appointment:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Away:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Breakfast:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Busy:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Dinner:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Holiday:Lorg/linphone/core/PresenceActivityType;

.field public static final enum InTransit:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Invalid:Lorg/linphone/core/PresenceActivityType;

.field public static final enum LookingForWork:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Lunch:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Meal:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Meeting:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Offline:Lorg/linphone/core/PresenceActivityType;

.field public static final enum OnThePhone:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Online:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Other:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Performance:Lorg/linphone/core/PresenceActivityType;

.field public static final enum PermanentAbsence:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Playing:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Presentation:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Shopping:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Sleeping:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Spectator:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Steering:Lorg/linphone/core/PresenceActivityType;

.field public static final enum TV:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Travel:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Unknown:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Vacation:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Working:Lorg/linphone/core/PresenceActivityType;

.field public static final enum Worship:Lorg/linphone/core/PresenceActivityType;


# instance fields
.field protected final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Offline"

    invoke-direct {v0, v1, v4, v4}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Offline:Lorg/linphone/core/PresenceActivityType;

    .line 27
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Online"

    invoke-direct {v0, v1, v5, v5}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Online:Lorg/linphone/core/PresenceActivityType;

    .line 31
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Appointment"

    invoke-direct {v0, v1, v6, v6}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Appointment:Lorg/linphone/core/PresenceActivityType;

    .line 33
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Away"

    invoke-direct {v0, v1, v7, v7}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Away:Lorg/linphone/core/PresenceActivityType;

    .line 35
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Breakfast"

    invoke-direct {v0, v1, v8, v8}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Breakfast:Lorg/linphone/core/PresenceActivityType;

    .line 37
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Busy"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Busy:Lorg/linphone/core/PresenceActivityType;

    .line 39
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Dinner"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Dinner:Lorg/linphone/core/PresenceActivityType;

    .line 41
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Holiday"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Holiday:Lorg/linphone/core/PresenceActivityType;

    .line 43
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "InTransit"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->InTransit:Lorg/linphone/core/PresenceActivityType;

    .line 45
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "LookingForWork"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->LookingForWork:Lorg/linphone/core/PresenceActivityType;

    .line 47
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Lunch"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Lunch:Lorg/linphone/core/PresenceActivityType;

    .line 50
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Meal"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Meal:Lorg/linphone/core/PresenceActivityType;

    .line 53
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Meeting"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Meeting:Lorg/linphone/core/PresenceActivityType;

    .line 55
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "OnThePhone"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->OnThePhone:Lorg/linphone/core/PresenceActivityType;

    .line 58
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Other"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Other:Lorg/linphone/core/PresenceActivityType;

    .line 63
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Performance"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Performance:Lorg/linphone/core/PresenceActivityType;

    .line 66
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "PermanentAbsence"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->PermanentAbsence:Lorg/linphone/core/PresenceActivityType;

    .line 68
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Playing"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Playing:Lorg/linphone/core/PresenceActivityType;

    .line 70
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Presentation"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Presentation:Lorg/linphone/core/PresenceActivityType;

    .line 72
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Shopping"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Shopping:Lorg/linphone/core/PresenceActivityType;

    .line 74
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Sleeping"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Sleeping:Lorg/linphone/core/PresenceActivityType;

    .line 76
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Spectator"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Spectator:Lorg/linphone/core/PresenceActivityType;

    .line 78
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Steering"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Steering:Lorg/linphone/core/PresenceActivityType;

    .line 80
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Travel"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Travel:Lorg/linphone/core/PresenceActivityType;

    .line 82
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "TV"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->TV:Lorg/linphone/core/PresenceActivityType;

    .line 84
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Unknown"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Unknown:Lorg/linphone/core/PresenceActivityType;

    .line 86
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Vacation"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Vacation:Lorg/linphone/core/PresenceActivityType;

    .line 88
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Working"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Working:Lorg/linphone/core/PresenceActivityType;

    .line 90
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Worship"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Worship:Lorg/linphone/core/PresenceActivityType;

    .line 91
    new-instance v0, Lorg/linphone/core/PresenceActivityType;

    const-string/jumbo v1, "Invalid"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lorg/linphone/core/PresenceActivityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->Invalid:Lorg/linphone/core/PresenceActivityType;

    .line 23
    const/16 v0, 0x1e

    new-array v0, v0, [Lorg/linphone/core/PresenceActivityType;

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Offline:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Online:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Appointment:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Away:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/linphone/core/PresenceActivityType;->Breakfast:Lorg/linphone/core/PresenceActivityType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Busy:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Dinner:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Holiday:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->InTransit:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->LookingForWork:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Lunch:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Meal:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Meeting:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->OnThePhone:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Other:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Performance:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->PermanentAbsence:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Playing:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Presentation:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Shopping:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Sleeping:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Spectator:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Steering:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Travel:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->TV:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Unknown:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Vacation:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Working:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Worship:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/linphone/core/PresenceActivityType;->Invalid:Lorg/linphone/core/PresenceActivityType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/linphone/core/PresenceActivityType;->$VALUES:[Lorg/linphone/core/PresenceActivityType;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lorg/linphone/core/PresenceActivityType;->mValue:I

    .line 97
    return-void
.end method

.method protected static fromInt(I)Lorg/linphone/core/PresenceActivityType;
    .locals 1

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    .line 134
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Invalid:Lorg/linphone/core/PresenceActivityType;

    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Offline:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 106
    :pswitch_1
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Online:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 107
    :pswitch_2
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Appointment:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 108
    :pswitch_3
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Away:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 109
    :pswitch_4
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Breakfast:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 110
    :pswitch_5
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Busy:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 111
    :pswitch_6
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Dinner:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 112
    :pswitch_7
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Holiday:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 113
    :pswitch_8
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->InTransit:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 114
    :pswitch_9
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->LookingForWork:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 115
    :pswitch_a
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Lunch:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 116
    :pswitch_b
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Meal:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 117
    :pswitch_c
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Meeting:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 118
    :pswitch_d
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->OnThePhone:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 119
    :pswitch_e
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Other:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 120
    :pswitch_f
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Performance:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 121
    :pswitch_10
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->PermanentAbsence:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 122
    :pswitch_11
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Playing:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 123
    :pswitch_12
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Presentation:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 124
    :pswitch_13
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Shopping:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 125
    :pswitch_14
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Sleeping:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 126
    :pswitch_15
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Spectator:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 127
    :pswitch_16
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Steering:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 128
    :pswitch_17
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Travel:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 129
    :pswitch_18
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->TV:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 130
    :pswitch_19
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Unknown:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 131
    :pswitch_1a
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Vacation:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 132
    :pswitch_1b
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Working:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 133
    :pswitch_1c
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->Worship:Lorg/linphone/core/PresenceActivityType;

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/PresenceActivityType;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/linphone/core/PresenceActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceActivityType;

    return-object v0
.end method

.method public static values()[Lorg/linphone/core/PresenceActivityType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/linphone/core/PresenceActivityType;->$VALUES:[Lorg/linphone/core/PresenceActivityType;

    invoke-virtual {v0}, [Lorg/linphone/core/PresenceActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/PresenceActivityType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/linphone/core/PresenceActivityType;->mValue:I

    return v0
.end method
