.class public final Landroid/credentials/selection/CreateCredentialProviderInfo;
.super Ljava/lang/Object;
.source "CreateCredentialProviderInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/CreateCredentialProviderInfo$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mProviderName:Ljava/lang/String;

.field private final blacklist mRemoteEntry:Landroid/credentials/selection/Entry;

.field private final blacklist mSaveEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;Landroid/credentials/selection/Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;",
            "Landroid/credentials/selection/Entry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mProviderName:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mSaveEntries:Ljava/util/List;

    iput-object p3, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-void
.end method


# virtual methods
.method public whitelist getProviderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRemoteEntry()Landroid/credentials/selection/Entry;
    .locals 0

    iget-object p0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-object p0
.end method

.method public whitelist getSaveEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/credentials/selection/CreateCredentialProviderInfo;->mSaveEntries:Ljava/util/List;

    return-object p0
.end method
