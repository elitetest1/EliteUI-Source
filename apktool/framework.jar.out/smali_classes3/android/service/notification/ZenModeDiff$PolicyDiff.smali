.class public Landroid/service/notification/ZenModeDiff$PolicyDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyDiff"
.end annotation


# static fields
.field public static final blacklist FIELD_ALLOW_CHANNELS:Ljava/lang/String; = "mAllowChannels"

.field public static final blacklist FIELD_CONVERSATION_SENDERS:Ljava/lang/String; = "mConversationSenders"

.field public static final blacklist FIELD_PRIORITY_CALLS:Ljava/lang/String; = "mPriorityCalls"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_ALARMS:Ljava/lang/String; = "mPriorityCategories_Alarms"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_CALLS:Ljava/lang/String; = "mPriorityCategories_Calls"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_CONVERSATIONS:Ljava/lang/String; = "mPriorityCategories_Conversations"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_EVENTS:Ljava/lang/String; = "mPriorityCategories_Events"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_MEDIA:Ljava/lang/String; = "mPriorityCategories_Media"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_MESSAGES:Ljava/lang/String; = "mPriorityCategories_Messages"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REMINDERS:Ljava/lang/String; = "mPriorityCategories_Reminders"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_REPEAT_CALLERS:Ljava/lang/String; = "mPriorityCategories_RepeatCallers"

.field public static final blacklist FIELD_PRIORITY_CATEGORY_SYSTEM:Ljava/lang/String; = "mPriorityCategories_System"

.field public static final blacklist FIELD_PRIORITY_MESSAGES:Ljava/lang/String; = "mPriorityMessages"

.field public static final blacklist FIELD_VISUAL_EFFECT_AMBIENT:Ljava/lang/String; = "mVisualEffects_Ambient"

.field public static final blacklist FIELD_VISUAL_EFFECT_BADGE:Ljava/lang/String; = "mVisualEffects_Badge"

.field public static final blacklist FIELD_VISUAL_EFFECT_FULL_SCREEN_INTENT:Ljava/lang/String; = "mVisualEffects_FullScreenIntent"

.field public static final blacklist FIELD_VISUAL_EFFECT_LIGHTS:Ljava/lang/String; = "mVisualEffects_Lights"

.field public static final blacklist FIELD_VISUAL_EFFECT_NOTIFICATION_LIST:Ljava/lang/String; = "mVisualEffects_NotificationList"

.field public static final blacklist FIELD_VISUAL_EFFECT_PEEK:Ljava/lang/String; = "mVisualEffects_Peek"

.field public static final blacklist FIELD_VISUAL_EFFECT_STATUS_BAR:Ljava/lang/String; = "mVisualEffects_StatusBar"


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenPolicy;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_Reminders"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    if-eq v0, v1, :cond_3

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_Events"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_Messages"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v1

    if-eq v0, v1, :cond_5

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_Calls"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_5
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    if-eq v0, v1, :cond_6

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_RepeatCallers"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_6
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    if-eq v0, v1, :cond_7

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_Alarms"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_7
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    if-eq v0, v1, :cond_8

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_Media"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    if-eq v0, v1, :cond_9

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_System"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_9
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v1

    if-eq v0, v1, :cond_a

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCategories_Conversations"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_a
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    if-eq v0, v1, :cond_b

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mVisualEffects_FullScreenIntent"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_b
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    if-eq v0, v1, :cond_c

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mVisualEffects_Lights"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_c
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    if-eq v0, v1, :cond_d

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mVisualEffects_Peek"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_d
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    if-eq v0, v1, :cond_e

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mVisualEffects_StatusBar"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_e
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    if-eq v0, v1, :cond_f

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mVisualEffects_Badge"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_f
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    if-eq v0, v1, :cond_10

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mVisualEffects_Ambient"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_10
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    if-eq v0, v1, :cond_11

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mVisualEffects_NotificationList"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_11
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    if-eq v0, v1, :cond_12

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityMessages"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_12
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    if-eq v0, v1, :cond_13

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mPriorityCalls"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_13
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    if-eq v0, v1, :cond_14

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "mConversationSenders"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_14
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v0

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    if-eq v0, v1, :cond_15

    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo p1, "mAllowChannels"

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    :cond_15
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist hasDiff()Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasFieldDiffs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZenPolicyDiff{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$PolicyDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
