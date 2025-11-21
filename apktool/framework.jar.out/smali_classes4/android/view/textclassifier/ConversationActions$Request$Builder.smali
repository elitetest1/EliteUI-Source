.class public final Landroid/view/textclassifier/ConversationActions$Request$Builder;
.super Ljava/lang/Object;
.source "ConversationActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationActions$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConversation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxSuggestions:I

.field private blacklist mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mConversation:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/ConversationActions$Request;
    .locals 7

    new-instance v0, Landroid/view/textclassifier/ConversationActions$Request;

    iget-object v1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mConversation:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v2}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v2

    :cond_0
    iget v3, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    iget-object v4, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mHints:Ljava/util/List;

    if-nez v4, :cond_1

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :goto_0
    iget-object p0, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez p0, :cond_2

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_2
    move-object v5, p0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/ConversationActions$Request;-><init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setHints(Ljava/util/List;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/ConversationActions$Request$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mHints:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setMaxSuggestions(I)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mMaxSuggestions:I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "maxSuggestions has to be greater than or equal to -1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setTypeConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/ConversationActions$Request$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request$Builder;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object p0
.end method
