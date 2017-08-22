.class public final enum Lvpadn/cr$a$a;
.super Ljava/lang/Enum;
.source "VideoData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cr$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvpadn/cr$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lvpadn/cr$a$a;

.field public static final enum b:Lvpadn/cr$a$a;

.field private static final synthetic c:[Lvpadn/cr$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Lvpadn/cr$a$a;

    const-string v1, "OUTAPP"

    invoke-direct {v0, v1, v2}, Lvpadn/cr$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/cr$a$a;->a:Lvpadn/cr$a$a;

    new-instance v0, Lvpadn/cr$a$a;

    const-string v1, "INAPP"

    invoke-direct {v0, v1, v3}, Lvpadn/cr$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/cr$a$a;->b:Lvpadn/cr$a$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lvpadn/cr$a$a;

    sget-object v1, Lvpadn/cr$a$a;->a:Lvpadn/cr$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lvpadn/cr$a$a;->b:Lvpadn/cr$a$a;

    aput-object v1, v0, v3

    sput-object v0, Lvpadn/cr$a$a;->c:[Lvpadn/cr$a$a;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvpadn/cr$a$a;
    .locals 1

    .prologue
    .line 139
    const-class v0, Lvpadn/cr$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvpadn/cr$a$a;

    return-object v0
.end method

.method public static values()[Lvpadn/cr$a$a;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lvpadn/cr$a$a;->c:[Lvpadn/cr$a$a;

    invoke-virtual {v0}, [Lvpadn/cr$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvpadn/cr$a$a;

    return-object v0
.end method
