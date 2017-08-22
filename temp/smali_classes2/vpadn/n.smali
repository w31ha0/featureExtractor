.class public Lvpadn/n;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvpadn/n$b;,
        Lvpadn/n$e;,
        Lvpadn/n$d;,
        Lvpadn/n$c;,
        Lvpadn/n$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:Z

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lvpadn/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Lvpadn/n$a;

.field private final f:Lvpadn/q;

.field private final g:Lvpadn/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, -0x1

    sput v0, Lvpadn/n;->a:I

    return-void
.end method

.method public constructor <init>(Lvpadn/f;Lvpadn/q;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    .line 88
    iput-object p2, p0, Lvpadn/n;->f:Lvpadn/q;

    .line 89
    iput-object p1, p0, Lvpadn/n;->g:Lvpadn/f;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Lvpadn/n$a;

    iput-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    .line 91
    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    .line 92
    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    const/4 v1, 0x1

    new-instance v2, Lvpadn/n$c;

    invoke-direct {v2, p0, v3}, Lvpadn/n$c;-><init>(Lvpadn/n;Lvpadn/n$1;)V

    aput-object v2, v0, v1

    .line 93
    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    const/4 v1, 0x2

    new-instance v2, Lvpadn/n$d;

    invoke-direct {v2, p0}, Lvpadn/n$d;-><init>(Lvpadn/n;)V

    aput-object v2, v0, v1

    .line 94
    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    const/4 v1, 0x3

    new-instance v2, Lvpadn/n$e;

    invoke-direct {v2, p0, v3}, Lvpadn/n$e;-><init>(Lvpadn/n;Lvpadn/n$1;)V

    aput-object v2, v0, v1

    .line 95
    invoke-virtual {p0}, Lvpadn/n;->a()V

    .line 96
    return-void
.end method

.method private a(Lvpadn/n$b;)I
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p1}, Lvpadn/n$b;->a()I

    move-result v0

    .line 130
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic a(Lvpadn/n;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lvpadn/n;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lvpadn/n$b;Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p1}, Lvpadn/n$b;->a()I

    move-result v0

    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1, p2}, Lvpadn/n$b;->a(Ljava/lang/StringBuilder;)V

    .line 139
    return-void
.end method

.method static synthetic b(Lvpadn/n;)Lvpadn/f;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lvpadn/n;->g:Lvpadn/f;

    return-object v0
.end method

.method private b(Lvpadn/n$b;)V
    .locals 2

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-boolean v0, p0, Lvpadn/n;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    iget v1, p0, Lvpadn/n;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    iget v1, p0, Lvpadn/n;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lvpadn/n$a;->a()V

    .line 259
    :cond_0
    monitor-exit p0

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 183
    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    monitor-exit p0

    .line 217
    :goto_0
    return-object v0

    .line 188
    :cond_0
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/n$b;

    .line 189
    invoke-virtual {v0}, Lvpadn/n$b;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    .line 190
    if-lez v5, :cond_2

    add-int v6, v3, v0

    sget v7, Lvpadn/n;->a:I

    if-le v6, v7, :cond_2

    sget v6, Lvpadn/n;->a:I

    if-lez v6, :cond_2

    .line 196
    :cond_1
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v5, v0, :cond_3

    move v4, v1

    .line 197
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v2

    .line 200
    :goto_4
    if-ge v3, v5, :cond_6

    .line 201
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/n$b;

    .line 202
    if-eqz v4, :cond_5

    add-int/lit8 v7, v3, 0x1

    if-ne v7, v5, :cond_5

    .line 203
    invoke-virtual {v0, v6}, Lvpadn/n$b;->b(Ljava/lang/StringBuilder;)V

    .line 200
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 193
    :cond_2
    add-int/2addr v3, v0

    .line 194
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    .line 195
    goto :goto_1

    :cond_3
    move v4, v2

    .line 196
    goto :goto_2

    .line 197
    :cond_4
    const/16 v0, 0x64

    goto :goto_3

    .line 205
    :cond_5
    const-string v7, "try{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v6}, Lvpadn/n$b;->b(Ljava/lang/StringBuilder;)V

    .line 207
    const-string v0, "}finally{"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 210
    :cond_6
    if-nez v4, :cond_7

    .line 211
    :try_start_1
    const-string v0, "window.setTimeout(function(){cordova.require(\'cordova/plugin/android/polling\').pollOnce();},0);"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_7
    if-eqz v4, :cond_8

    move v0, v1

    :goto_6
    if-ge v0, v5, :cond_9

    .line 214
    const/16 v1, 0x7d

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_6

    .line 216
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic c(Lvpadn/n;)Lvpadn/q;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lvpadn/n;->f:Lvpadn/q;

    return-object v0
.end method

.method static synthetic d(Lvpadn/n;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 124
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lvpadn/n;->a(I)V

    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 102
    if-ltz p1, :cond_0

    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 103
    :cond_0
    const-string v0, "JsMessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NativeToJsBridgeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    iget v0, p0, Lvpadn/n;->b:I

    if-eq p1, v0, :cond_1

    .line 106
    const-string v0, "JsMessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set native->JS mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iput p1, p0, Lvpadn/n;->b:I

    .line 109
    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    aget-object v0, v0, p1

    .line 110
    iget-boolean v1, p0, Lvpadn/n;->c:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 111
    invoke-interface {v0}, Lvpadn/n$a;->a()V

    .line 113
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lvpadn/n$b;

    invoke-direct {v0, p1}, Lvpadn/n$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lvpadn/n;->b(Lvpadn/n$b;)V

    .line 226
    return-void
.end method

.method public a(Lvpadn/w;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 232
    if-nez p2, :cond_1

    .line 233
    const-string v0, "JsMessageQueue"

    const-string v1, "Got plugin result with no callbackId"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p1}, Lvpadn/w;->a()I

    move-result v0

    sget-object v1, Lvpadn/w$a;->a:Lvpadn/w$a;

    invoke-virtual {v1}, Lvpadn/w$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 239
    :goto_1
    invoke-virtual {p1}, Lvpadn/w;->e()Z

    move-result v1

    .line 240
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    .line 243
    :cond_2
    new-instance v0, Lvpadn/n$b;

    invoke-direct {v0, p1, p2}, Lvpadn/n$b;-><init>(Lvpadn/w;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, v0}, Lvpadn/n;->b(Lvpadn/n$b;)V

    goto :goto_0

    .line 238
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 263
    iget-boolean v0, p0, Lvpadn/n;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 266
    const-string v0, "JsMessageQueue"

    const-string v1, "nested call to setPaused detected."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    :cond_0
    iput-boolean p1, p0, Lvpadn/n;->c:Z

    .line 269
    if-nez p1, :cond_2

    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    iget v1, p0, Lvpadn/n;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lvpadn/n;->e:[Lvpadn/n$a;

    iget v1, p0, Lvpadn/n;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lvpadn/n$a;->a()V

    .line 274
    :cond_1
    monitor-exit p0

    .line 276
    :cond_2
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    monitor-exit p0

    .line 173
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/n$b;

    .line 154
    invoke-direct {p0, v0}, Lvpadn/n;->a(Lvpadn/n$b;)I

    move-result v0

    .line 155
    if-lez v2, :cond_2

    add-int v5, v3, v0

    sget v6, Lvpadn/n;->a:I

    if-le v5, v6, :cond_2

    sget v5, Lvpadn/n;->a:I

    if-lez v5, :cond_2

    .line 162
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    :goto_2
    if-ge v1, v2, :cond_3

    .line 164
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/n$b;

    .line 165
    invoke-direct {p0, v0, v4}, Lvpadn/n;->a(Lvpadn/n$b;Ljava/lang/StringBuilder;)V

    .line 163
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 158
    :cond_2
    add-int/2addr v3, v0

    .line 159
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 160
    goto :goto_1

    .line 168
    :cond_3
    iget-object v0, p0, Lvpadn/n;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 170
    const/16 v0, 0x2a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    monitor-exit p0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
