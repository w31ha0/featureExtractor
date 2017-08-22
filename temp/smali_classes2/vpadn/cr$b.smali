.class public final enum Lvpadn/cr$b;
.super Ljava/lang/Enum;
.source "VideoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvpadn/cr$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lvpadn/cr$b;

.field public static final enum b:Lvpadn/cr$b;

.field public static final enum c:Lvpadn/cr$b;

.field private static final synthetic d:[Lvpadn/cr$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lvpadn/cr$b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lvpadn/cr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/cr$b;->a:Lvpadn/cr$b;

    new-instance v0, Lvpadn/cr$b;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lvpadn/cr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    new-instance v0, Lvpadn/cr$b;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lvpadn/cr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lvpadn/cr$b;

    sget-object v1, Lvpadn/cr$b;->a:Lvpadn/cr$b;

    aput-object v1, v0, v2

    sget-object v1, Lvpadn/cr$b;->b:Lvpadn/cr$b;

    aput-object v1, v0, v3

    sget-object v1, Lvpadn/cr$b;->c:Lvpadn/cr$b;

    aput-object v1, v0, v4

    sput-object v0, Lvpadn/cr$b;->d:[Lvpadn/cr$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvpadn/cr$b;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lvpadn/cr$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvpadn/cr$b;

    return-object v0
.end method

.method public static values()[Lvpadn/cr$b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lvpadn/cr$b;->d:[Lvpadn/cr$b;

    invoke-virtual {v0}, [Lvpadn/cr$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvpadn/cr$b;

    return-object v0
.end method
