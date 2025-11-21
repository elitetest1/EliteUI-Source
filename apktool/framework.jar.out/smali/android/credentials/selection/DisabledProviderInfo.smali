.class public final Landroid/credentials/selection/DisabledProviderInfo;
.super Ljava/lang/Object;
.source "DisabledProviderInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mProviderName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/credentials/selection/DisabledProviderInfo;->mProviderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getProviderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/credentials/selection/DisabledProviderInfo;->mProviderName:Ljava/lang/String;

    return-object p0
.end method
