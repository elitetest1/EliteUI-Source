.class public abstract Lcom/google/android/util/AbstractMessageParser$Token;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Token$Type;
    }
.end annotation


# instance fields
.field protected blacklist text:Ljava/lang/String;

.field protected blacklist type:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# direct methods
.method protected constructor blacklist <init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Token;->type:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist controlCaps()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public blacklist getRawText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 0

    iget-object p0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->type:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object p0
.end method

.method public blacklist isArray()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract blacklist isHtml()Z
.end method

.method public blacklist isMedia()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setCaps()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist toHtml(Z)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/AssertionError;

    const-string/jumbo p1, "not html"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
