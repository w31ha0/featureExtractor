.class final enum Lcom/adbert/a/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adbert/a/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adbert/a/c$b;

.field public static final enum b:Lcom/adbert/a/c$b;

.field public static final enum c:Lcom/adbert/a/c$b;

.field public static final enum d:Lcom/adbert/a/c$b;

.field public static final enum e:Lcom/adbert/a/c$b;

.field public static final enum f:Lcom/adbert/a/c$b;

.field private static final synthetic g:[Lcom/adbert/a/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 408
    new-instance v0, Lcom/adbert/a/c$b;

    const-string v1, "post"

    invoke-direct {v0, v1, v3}, Lcom/adbert/a/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adbert/a/c$b;->a:Lcom/adbert/a/c$b;

    new-instance v0, Lcom/adbert/a/c$b;

    const-string v1, "gets"

    invoke-direct {v0, v1, v4}, Lcom/adbert/a/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adbert/a/c$b;->b:Lcom/adbert/a/c$b;

    new-instance v0, Lcom/adbert/a/c$b;

    const-string v1, "postWithImage"

    invoke-direct {v0, v1, v5}, Lcom/adbert/a/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adbert/a/c$b;->c:Lcom/adbert/a/c$b;

    new-instance v0, Lcom/adbert/a/c$b;

    const-string v1, "getImage"

    invoke-direct {v0, v1, v6}, Lcom/adbert/a/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adbert/a/c$b;->d:Lcom/adbert/a/c$b;

    new-instance v0, Lcom/adbert/a/c$b;

    const-string v1, "getImageAndSave"

    invoke-direct {v0, v1, v7}, Lcom/adbert/a/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adbert/a/c$b;->e:Lcom/adbert/a/c$b;

    new-instance v0, Lcom/adbert/a/c$b;

    const-string v1, "getFile"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adbert/a/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adbert/a/c$b;->f:Lcom/adbert/a/c$b;

    .line 407
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adbert/a/c$b;

    sget-object v1, Lcom/adbert/a/c$b;->a:Lcom/adbert/a/c$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adbert/a/c$b;->b:Lcom/adbert/a/c$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adbert/a/c$b;->c:Lcom/adbert/a/c$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adbert/a/c$b;->d:Lcom/adbert/a/c$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adbert/a/c$b;->e:Lcom/adbert/a/c$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adbert/a/c$b;->f:Lcom/adbert/a/c$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adbert/a/c$b;->g:[Lcom/adbert/a/c$b;

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
    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adbert/a/c$b;
    .locals 1

    .prologue
    .line 407
    const-class v0, Lcom/adbert/a/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/c$b;

    return-object v0
.end method

.method public static values()[Lcom/adbert/a/c$b;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/adbert/a/c$b;->g:[Lcom/adbert/a/c$b;

    invoke-virtual {v0}, [Lcom/adbert/a/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adbert/a/c$b;

    return-object v0
.end method
