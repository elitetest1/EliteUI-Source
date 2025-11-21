.class public Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;
.super Ljava/lang/Object;
.source "X509NameTokenizer.java"


# instance fields
.field private blacklist buf:Ljava/lang/StringBuffer;

.field private blacklist index:I

.field private blacklist separator:C

.field private blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iput-char p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    return-void
.end method


# virtual methods
.method public blacklist hasMoreTokens()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist nextToken()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v3

    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    if-nez v2, :cond_1

    xor-int/lit8 v4, v4, 0x1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    if-nez v2, :cond_8

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_4

    :cond_4
    iget-char v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-ne v5, v7, :cond_5

    goto :goto_5

    :cond_5
    const/16 v7, 0x23

    if-ne v5, v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const/16 v7, 0x2b

    if-ne v5, v7, :cond_7

    iget-char v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->separator:C

    if-eq v8, v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    move v2, v3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    :goto_5
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->index:I

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/X509NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
