.class public Landroid/view/inputmethod/SemBaseInputConnectionUtil;
.super Ljava/lang/Object;
.source "SemBaseInputConnectionUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertAllBrackets(Ljava/lang/CharSequence;ILandroid/text/Editable;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isAllBracketChars(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, p3}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRTLText(Ljava/lang/String;ILandroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static blacklist convertAllBrackets(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static blacklist convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "}"

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "["

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "<"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ">"

    if-eqz v1, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "("

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const/16 v0, 0xab

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xbb

    if-eqz v1, :cond_8

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 v0, 0x300a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x300b

    if-eqz v1, :cond_a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string/jumbo v0, "\u300e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "\u300f"

    if-eqz v1, :cond_c

    return-object v2

    :cond_c
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const-string/jumbo v0, "\u300c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "\u300d"

    if-eqz v1, :cond_e

    return-object v2

    :cond_e
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    const-string/jumbo v0, "\u3014"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "\u3015"

    if-eqz v1, :cond_10

    return-object v2

    :cond_10
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    :cond_11
    const-string/jumbo v0, "\u3010"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "\u3011"

    if-eqz v1, :cond_12

    return-object v2

    :cond_12
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    :cond_13
    return-object p0
.end method

.method private static blacklist isAllBracketChars(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<>{}[]()\u00ab\u00bb\u300a\u300b\u300e\u300f\u300c\u300d\u3014\u3015\u3010\u3011"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isRTLText(Ljava/lang/String;ILandroid/view/View;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_19

    const/16 v3, 0xa

    if-eqz p1, :cond_0

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-gez v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    add-int/2addr v4, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/4 v8, 0x2

    const/16 v9, 0xf

    const/16 v10, 0xe

    if-ge v4, v5, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    goto :goto_4

    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    if-eqz v5, :cond_6

    if-eq v5, v10, :cond_6

    if-ne v5, v9, :cond_3

    goto :goto_3

    :cond_3
    if-eq v5, v1, :cond_5

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_5

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v4, v1

    goto :goto_5

    :cond_6
    :goto_3
    move v4, v0

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    :goto_5
    move v5, p1

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_b

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v3, :cond_8

    goto :goto_8

    :cond_8
    invoke-static {v11}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v11

    if-eqz v11, :cond_a

    if-eq v11, v10, :cond_a

    if-eq v11, v9, :cond_a

    if-eq v11, v1, :cond_a

    if-eq v11, v8, :cond_a

    if-eq v11, v7, :cond_a

    if-eq v11, v6, :cond_a

    const/4 v12, 0x3

    if-ne v11, v12, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    move v4, v2

    :cond_b
    :goto_8
    if-ne v4, v2, :cond_18

    add-int/lit8 v5, p1, -0x1

    :goto_9
    if-ltz v5, :cond_11

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v3, :cond_c

    goto :goto_c

    :cond_c
    invoke-static {v11}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v11

    if-eqz v11, :cond_10

    if-eq v11, v10, :cond_10

    if-ne v11, v9, :cond_d

    goto :goto_b

    :cond_d
    if-eq v11, v1, :cond_f

    if-eq v11, v8, :cond_f

    if-eq v11, v7, :cond_f

    if-ne v11, v6, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_f
    :goto_a
    move v4, v1

    goto :goto_c

    :cond_10
    :goto_b
    move v4, v0

    :cond_11
    :goto_c
    if-ne v4, v2, :cond_17

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p1, v5, :cond_17

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_12

    goto :goto_10

    :cond_12
    invoke-static {v5}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    if-eqz v5, :cond_16

    if-eq v5, v10, :cond_16

    if-ne v5, v9, :cond_13

    goto :goto_f

    :cond_13
    if-eq v5, v1, :cond_15

    if-eq v5, v8, :cond_15

    if-eq v5, v7, :cond_15

    if-ne v5, v6, :cond_14

    goto :goto_e

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_15
    :goto_e
    move v4, v1

    goto :goto_10

    :cond_16
    :goto_f
    move v4, v0

    :cond_17
    :goto_10
    if-ne v4, v2, :cond_18

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_18

    invoke-static {}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRtlLanguage()Z

    move-result p0

    if-eqz p0, :cond_18

    move v2, v1

    goto :goto_11

    :cond_18
    move v2, v4

    goto :goto_11

    :cond_19
    invoke-static {}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->isRtlLanguage()Z

    move-result p0

    if-eqz p0, :cond_1a

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_1a

    return v1

    :cond_1a
    :goto_11
    if-ne v2, v1, :cond_1b

    return v1

    :cond_1b
    return v0
.end method

.method private static blacklist isRtlLanguage()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
