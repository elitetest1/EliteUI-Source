.class public final synthetic Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

.field public final synthetic blacklist f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    iput-object p3, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;->f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    iget-object p0, p0, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory$$ExternalSyntheticLambda5;->f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;

    check-cast p1, Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/sume/core/filter/factory/MediaFilterFactory;->lambda$newFilter$5$com-samsung-android-sume-core-filter-factory-MediaFilterFactory(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/factory/MediaFilterCreator;)Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object p0

    return-object p0
.end method
