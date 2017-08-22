.class public final enum Lcom/adbert/AdbertOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adbert/AdbertOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adbert/AdbertOrientation;

.field public static final enum LAND:Lcom/adbert/AdbertOrientation;

.field public static final enum NORMAL:Lcom/adbert/AdbertOrientation;

.field public static final enum PORT:Lcom/adbert/AdbertOrientation;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/adbert/AdbertOrientation;

    const-string v1, "LAND"

    invoke-direct {v0, v1, v2, v2}, Lcom/adbert/AdbertOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/AdbertOrientation;->LAND:Lcom/adbert/AdbertOrientation;

    new-instance v0, Lcom/adbert/AdbertOrientation;

    const-string v1, "PORT"

    invoke-direct {v0, v1, v3, v3}, Lcom/adbert/AdbertOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/AdbertOrientation;->PORT:Lcom/adbert/AdbertOrientation;

    new-instance v0, Lcom/adbert/AdbertOrientation;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/adbert/AdbertOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/AdbertOrientation;->NORMAL:Lcom/adbert/AdbertOrientation;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adbert/AdbertOrientation;

    sget-object v1, Lcom/adbert/AdbertOrientation;->LAND:Lcom/adbert/AdbertOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adbert/AdbertOrientation;->PORT:Lcom/adbert/AdbertOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adbert/AdbertOrientation;->NORMAL:Lcom/adbert/AdbertOrientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adbert/AdbertOrientation;->$VALUES:[Lcom/adbert/AdbertOrientation;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/adbert/AdbertOrientation;->code:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adbert/AdbertOrientation;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/adbert/AdbertOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adbert/AdbertOrientation;

    return-object v0
.end method

.method public static values()[Lcom/adbert/AdbertOrientation;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/adbert/AdbertOrientation;->$VALUES:[Lcom/adbert/AdbertOrientation;

    invoke-virtual {v0}, [Lcom/adbert/AdbertOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adbert/AdbertOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/adbert/AdbertOrientation;->code:I

    return v0
.end method
