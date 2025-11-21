.class final Lcom/android/internal/widget/MessagingData;
.super Ljava/lang/Object;
.source "MessagingData.java"


# instance fields
.field private blacklist mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

.field private final blacklist mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mHistoricMessagingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNewMessagingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mShowSpinner:Z

.field private final blacklist mSummarization:Ljava/lang/CharSequence;

.field private final blacklist mUnreadCount:I

.field private final blacklist mUser:Landroid/app/Person;


# direct methods
.method constructor blacklist <init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Person;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;",
            "Lcom/android/internal/widget/ConversationHeaderData;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingData;->mUser:Landroid/app/Person;

    iput-boolean p2, p0, Lcom/android/internal/widget/MessagingData;->mShowSpinner:Z

    iput p3, p0, Lcom/android/internal/widget/MessagingData;->mUnreadCount:I

    iput-object p4, p0, Lcom/android/internal/widget/MessagingData;->mHistoricMessagingMessages:Ljava/util/List;

    iput-object p5, p0, Lcom/android/internal/widget/MessagingData;->mNewMessagingMessages:Ljava/util/List;

    iput-object p6, p0, Lcom/android/internal/widget/MessagingData;->mGroups:Ljava/util/List;

    iput-object p7, p0, Lcom/android/internal/widget/MessagingData;->mSenders:Ljava/util/List;

    iput-object p8, p0, Lcom/android/internal/widget/MessagingData;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    iput-object p9, p0, Lcom/android/internal/widget/MessagingData;->mSummarization:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/Person;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Person;",
            "Z",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public blacklist getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/MessagingData;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    return-object p0
.end method

.method public blacklist getGroups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/MessagingData;->mGroups:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getHistoricMessagingMessages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/MessagingData;->mHistoricMessagingMessages:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getNewMessagingMessages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/MessagingData;->mNewMessagingMessages:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getSenders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/MessagingData;->mSenders:Ljava/util/List;

    return-object p0
.end method

.method public blacklist getShowSpinner()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/MessagingData;->mShowSpinner:Z

    return p0
.end method

.method public blacklist getSummarization()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/MessagingData;->mSummarization:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist getUnreadCount()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/MessagingData;->mUnreadCount:I

    return p0
.end method

.method public blacklist getUser()Landroid/app/Person;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/MessagingData;->mUser:Landroid/app/Person;

    return-object p0
.end method
