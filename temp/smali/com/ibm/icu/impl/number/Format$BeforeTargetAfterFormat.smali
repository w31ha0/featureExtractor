.class public Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;
.super Lcom/ibm/icu/impl/number/Format$SingularFormat;
.source "Format.java"


# instance fields
.field private after1:Lcom/ibm/icu/impl/number/Format$AfterFormat;

.field private after2:Lcom/ibm/icu/impl/number/Format$AfterFormat;

.field private after3:Lcom/ibm/icu/impl/number/Format$AfterFormat;

.field private before1:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

.field private before2:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

.field private before3:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

.field private final rules:Lcom/ibm/icu/text/PluralRules;

.field private target:Lcom/ibm/icu/impl/number/Format$TargetFormat;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/PluralRules;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$SingularFormat;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before1:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    .line 106
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before2:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    .line 107
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before3:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    .line 108
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->target:Lcom/ibm/icu/impl/number/Format$TargetFormat;

    .line 109
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after1:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    .line 110
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after2:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    .line 111
    iput-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after3:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    .line 115
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    .line 116
    return-void
.end method


# virtual methods
.method public addAfterFormat(Lcom/ibm/icu/impl/number/Format$AfterFormat;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after1:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after1:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after2:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-nez v0, :cond_1

    .line 138
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after2:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after3:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-nez v0, :cond_2

    .line 140
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after3:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only three AfterFormats are allowed at a time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addBeforeFormat(Lcom/ibm/icu/impl/number/Format$BeforeFormat;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before1:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before1:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before2:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-nez v0, :cond_1

    .line 122
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before2:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before3:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-nez v0, :cond_2

    .line 124
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before3:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only three BeforeFormats are allowed at a time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before1:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before1:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before2:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before2:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before3:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before3:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->target:Lcom/ibm/icu/impl/number/Format$TargetFormat;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/Format$TargetFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 197
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after1:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after1:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/Format$AfterFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after2:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after2:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/Format$AfterFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after3:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-eqz v0, :cond_5

    .line 204
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after3:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/Format$AfterFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    .line 206
    :cond_5
    return-void
.end method

.method public format(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    sget-object v0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->threadLocalModifierHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/ModifierHolder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/ModifierHolder;->clear()Lcom/ibm/icu/impl/number/ModifierHolder;

    move-result-object v1

    .line 149
    sget-object v0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->process(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result v2

    .line 151
    invoke-virtual {v1, v0, v3, v2}, Lcom/ibm/icu/impl/number/ModifierHolder;->applyAll(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    .line 152
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I
    .locals 3

    .prologue
    .line 159
    .line 160
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before1:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before1:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;->before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/text/PluralRules;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before2:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before2:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;->before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/text/PluralRules;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before3:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->before3:Lcom/ibm/icu/impl/number/Format$BeforeFormat;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->rules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;->before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/text/PluralRules;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->target:Lcom/ibm/icu/impl/number/Format$TargetFormat;

    invoke-interface {v0, p1, p3, p4}, Lcom/ibm/icu/impl/number/Format$TargetFormat;->target(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result v0

    .line 172
    add-int v1, p4, v0

    invoke-virtual {p2, p3, p4, v1}, Lcom/ibm/icu/impl/number/ModifierHolder;->applyStrong(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after1:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after1:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    add-int v2, p4, v0

    invoke-interface {v1, p2, p3, p4, v2}, Lcom/ibm/icu/impl/number/Format$AfterFormat;->after(Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after2:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-eqz v1, :cond_4

    .line 177
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after2:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    add-int v2, p4, v0

    invoke-interface {v1, p2, p3, p4, v2}, Lcom/ibm/icu/impl/number/Format$AfterFormat;->after(Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after3:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    if-eqz v1, :cond_5

    .line 180
    iget-object v1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->after3:Lcom/ibm/icu/impl/number/Format$AfterFormat;

    add-int v2, p4, v0

    invoke-interface {v1, p2, p3, p4, v2}, Lcom/ibm/icu/impl/number/Format$AfterFormat;->after(Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_5
    return v0
.end method

.method public setTargetFormat(Lcom/ibm/icu/impl/number/Format$TargetFormat;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ibm/icu/impl/number/Format$BeforeTargetAfterFormat;->target:Lcom/ibm/icu/impl/number/Format$TargetFormat;

    .line 132
    return-void
.end method
