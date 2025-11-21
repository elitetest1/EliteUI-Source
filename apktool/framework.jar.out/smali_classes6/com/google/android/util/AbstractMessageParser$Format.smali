.class public Lcom/google/android/util/AbstractMessageParser$Format;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# instance fields
.field private blacklist ch:C

.field private blacklist matched:Z

.field private blacklist start:Z


# direct methods
.method public constructor blacklist <init>(CZ)V
    .locals 2

    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    iput-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    return-void
.end method

.method private blacklist getFormatEnd(C)Ljava/lang/String;
    .locals 2

    const/16 p0, 0x22

    if-eq p1, p0, :cond_3

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_2

    const/16 p0, 0x5e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x5f

    if-ne p1, p0, :cond_0

    const-string p0, "</i>"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown format \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const-string p0, "</font></b>"

    return-object p0

    :cond_2
    const-string p0, "</b>"

    return-object p0

    :cond_3
    const-string/jumbo p0, "\u201d</font>"

    return-object p0
.end method

.method private blacklist getFormatStart(C)Ljava/lang/String;
    .locals 2

    const/16 p0, 0x22

    if-eq p1, p0, :cond_3

    const/16 p0, 0x2a

    if-eq p1, p0, :cond_2

    const/16 p0, 0x5e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x5f

    if-ne p1, p0, :cond_0

    const-string p0, "<i>"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown format \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const-string p0, "<b><font color=\"#005FFF\">"

    return-object p0

    :cond_2
    const-string p0, "<b>"

    return-object p0

    :cond_3
    const-string p0, "<font color=\"#999999\">\u201c"

    return-object p0
.end method


# virtual methods
.method public blacklist controlCaps()Z
    .locals 1

    iget-char p0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    const/16 v0, 0x5e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public blacklist isHtml()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist setCaps()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    return p0
.end method

.method public blacklist setMatched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    return-void
.end method

.method public blacklist toHtml(Z)Ljava/lang/String;
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    if-eqz p1, :cond_0

    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatStart(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatEnd(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-char p0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    const/16 p1, 0x22

    if-ne p0, p1, :cond_2

    const-string p0, "&quot;"

    return-object p0

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
