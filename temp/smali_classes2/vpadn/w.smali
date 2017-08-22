.class public Lvpadn/w;
.super Ljava/lang/Object;
.source "PluginResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/w$a;
    }
.end annotation


# static fields
.field public static a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 147
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Class not found"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Illegal access"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Instantiation error"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Malformed url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Invalid action"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "JSON error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Error"

    aput-object v2, v0, v1

    sput-object v0, Lvpadn/w;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lvpadn/w$a;)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lvpadn/w;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Lvpadn/w$a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lvpadn/w$a;F)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/w;->d:Z

    .line 62
    invoke-virtual {p1}, Lvpadn/w$a;->ordinal()I

    move-result v0

    iput v0, p0, Lvpadn/w;->b:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lvpadn/w;->c:I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lvpadn/w$a;I)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/w;->d:Z

    .line 56
    invoke-virtual {p1}, Lvpadn/w$a;->ordinal()I

    move-result v0

    iput v0, p0, Lvpadn/w;->b:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lvpadn/w;->c:I

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Lvpadn/w$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/w;->d:Z

    .line 38
    invoke-virtual {p1}, Lvpadn/w$a;->ordinal()I

    move-result v0

    iput v0, p0, Lvpadn/w;->b:I

    .line 39
    if-nez p2, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lvpadn/w;->c:I

    .line 40
    iput-object p2, p0, Lvpadn/w;->e:Ljava/lang/String;

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lvpadn/w$a;Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/w;->d:Z

    .line 44
    invoke-virtual {p1}, Lvpadn/w$a;->ordinal()I

    move-result v0

    iput v0, p0, Lvpadn/w;->b:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lvpadn/w;->c:I

    .line 46
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Lvpadn/w$a;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/w;->d:Z

    .line 50
    invoke-virtual {p1}, Lvpadn/w$a;->ordinal()I

    move-result v0

    iput v0, p0, Lvpadn/w;->b:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lvpadn/w;->c:I

    .line 52
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lvpadn/w$a;Z)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/w;->d:Z

    .line 68
    invoke-virtual {p1}, Lvpadn/w$a;->ordinal()I

    move-result v0

    iput v0, p0, Lvpadn/w;->b:I

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lvpadn/w;->c:I

    .line 70
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Lvpadn/w$a;[B)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/w;->d:Z

    .line 74
    invoke-virtual {p1}, Lvpadn/w$a;->ordinal()I

    move-result v0

    iput v0, p0, Lvpadn/w;->b:I

    .line 75
    const/4 v0, 0x6

    iput v0, p0, Lvpadn/w;->c:I

    .line 76
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lvpadn/w;->b:I

    return v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lvpadn/w;->d:Z

    .line 81
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lvpadn/w;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lvpadn/w;->e:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    .line 95
    :cond_0
    iget-object v0, p0, Lvpadn/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lvpadn/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lvpadn/w;->d:Z

    return v0
.end method
