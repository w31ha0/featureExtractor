.class public final enum Lvpadn/w$a;
.super Ljava/lang/Enum;
.source "PluginResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvpadn/w$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lvpadn/w$a;

.field public static final enum b:Lvpadn/w$a;

.field public static final enum c:Lvpadn/w$a;

.field public static final enum d:Lvpadn/w$a;

.field public static final enum e:Lvpadn/w$a;

.field public static final enum f:Lvpadn/w$a;

.field public static final enum g:Lvpadn/w$a;

.field public static final enum h:Lvpadn/w$a;

.field public static final enum i:Lvpadn/w$a;

.field public static final enum j:Lvpadn/w$a;

.field private static final synthetic k:[Lvpadn/w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    new-instance v0, Lvpadn/w$a;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1, v3}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->a:Lvpadn/w$a;

    .line 162
    new-instance v0, Lvpadn/w$a;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->b:Lvpadn/w$a;

    .line 163
    new-instance v0, Lvpadn/w$a;

    const-string v1, "CLASS_NOT_FOUND_EXCEPTION"

    invoke-direct {v0, v1, v5}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->c:Lvpadn/w$a;

    .line 164
    new-instance v0, Lvpadn/w$a;

    const-string v1, "ILLEGAL_ACCESS_EXCEPTION"

    invoke-direct {v0, v1, v6}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->d:Lvpadn/w$a;

    .line 165
    new-instance v0, Lvpadn/w$a;

    const-string v1, "INSTANTIATION_EXCEPTION"

    invoke-direct {v0, v1, v7}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->e:Lvpadn/w$a;

    .line 166
    new-instance v0, Lvpadn/w$a;

    const-string v1, "MALFORMED_URL_EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->f:Lvpadn/w$a;

    .line 167
    new-instance v0, Lvpadn/w$a;

    const-string v1, "IO_EXCEPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->g:Lvpadn/w$a;

    .line 168
    new-instance v0, Lvpadn/w$a;

    const-string v1, "INVALID_ACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->h:Lvpadn/w$a;

    .line 169
    new-instance v0, Lvpadn/w$a;

    const-string v1, "JSON_EXCEPTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->i:Lvpadn/w$a;

    .line 170
    new-instance v0, Lvpadn/w$a;

    const-string v1, "ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lvpadn/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvpadn/w$a;->j:Lvpadn/w$a;

    .line 160
    const/16 v0, 0xa

    new-array v0, v0, [Lvpadn/w$a;

    sget-object v1, Lvpadn/w$a;->a:Lvpadn/w$a;

    aput-object v1, v0, v3

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    aput-object v1, v0, v4

    sget-object v1, Lvpadn/w$a;->c:Lvpadn/w$a;

    aput-object v1, v0, v5

    sget-object v1, Lvpadn/w$a;->d:Lvpadn/w$a;

    aput-object v1, v0, v6

    sget-object v1, Lvpadn/w$a;->e:Lvpadn/w$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lvpadn/w$a;->f:Lvpadn/w$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lvpadn/w$a;->g:Lvpadn/w$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lvpadn/w$a;->h:Lvpadn/w$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lvpadn/w$a;->i:Lvpadn/w$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lvpadn/w$a;->j:Lvpadn/w$a;

    aput-object v2, v0, v1

    sput-object v0, Lvpadn/w$a;->k:[Lvpadn/w$a;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvpadn/w$a;
    .locals 1

    .prologue
    .line 160
    const-class v0, Lvpadn/w$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvpadn/w$a;

    return-object v0
.end method

.method public static values()[Lvpadn/w$a;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lvpadn/w$a;->k:[Lvpadn/w$a;

    invoke-virtual {v0}, [Lvpadn/w$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvpadn/w$a;

    return-object v0
.end method
