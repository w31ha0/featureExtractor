.class Lcom/netflix/android/org/json/zip/TrieKeep$Node;
.super Ljava/lang/Object;
.source "TrieKeep.java"

# interfaces
.implements Lcom/netflix/android/org/json/zip/PostMortem;


# instance fields
.field private integer:I

.field private next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

.field final synthetic this$0:Lcom/netflix/android/org/json/zip/TrieKeep;


# direct methods
.method public constructor <init>(Lcom/netflix/android/org/json/zip/TrieKeep;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->this$0:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/android/org/json/zip/TrieKeep$Node;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    return v0
.end method

.method static synthetic access$002(Lcom/netflix/android/org/json/zip/TrieKeep$Node;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    return p1
.end method


# virtual methods
.method public get(B)Lcom/netflix/android/org/json/zip/TrieKeep$Node;
    .locals 1

    .prologue
    .line 71
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->get(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    check-cast p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    .line 80
    if-nez p1, :cond_1

    .line 81
    const-string/jumbo v1, "\nMisalign"

    invoke-static {v1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    iget v3, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    if-eq v2, v3, :cond_2

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\nInteger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    if-nez v2, :cond_4

    .line 90
    iget-object v2, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    if-nez v2, :cond_3

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\nNext is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v0

    .line 96
    :goto_1
    const/16 v3, 0x100

    if-ge v2, v3, :cond_7

    .line 97
    iget-object v3, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aget-object v3, v3, v2

    .line 98
    if-eqz v3, :cond_6

    .line 99
    iget-object v4, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->postMortem(Lcom/netflix/android/org/json/zip/PostMortem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_6
    iget-object v3, p1, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\nMisalign "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/android/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 107
    goto/16 :goto_0
.end method

.method public set(BLcom/netflix/android/org/json/zip/TrieKeep$Node;)V
    .locals 1

    .prologue
    .line 139
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0, p2}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->set(ILcom/netflix/android/org/json/zip/TrieKeep$Node;)V

    .line 140
    return-void
.end method

.method public set(ILcom/netflix/android/org/json/zip/TrieKeep$Node;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    if-nez v0, :cond_0

    .line 120
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    iput-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->next:[Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    aput-object p2, v0, p1

    .line 128
    return-void
.end method

.method public vet(B)Lcom/netflix/android/org/json/zip/TrieKeep$Node;
    .locals 1

    .prologue
    .line 168
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->vet(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object v0

    return-object v0
.end method

.method public vet(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->get(I)Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;

    iget-object v1, p0, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->this$0:Lcom/netflix/android/org/json/zip/TrieKeep;

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;-><init>(Lcom/netflix/android/org/json/zip/TrieKeep;)V

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/zip/TrieKeep$Node;->set(ILcom/netflix/android/org/json/zip/TrieKeep$Node;)V

    .line 156
    :cond_0
    return-object v0
.end method
