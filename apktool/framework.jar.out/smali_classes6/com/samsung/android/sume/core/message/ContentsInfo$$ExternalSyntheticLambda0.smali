.class public final synthetic Lcom/samsung/android/sume/core/message/ContentsInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/message/ContentsInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/message/ContentsInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/message/ContentsInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/ContentsInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sume/core/message/ContentsInfo$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sume/core/message/ContentsInfo;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/message/ContentsInfo;->lambda$toString$0$com-samsung-android-sume-core-message-ContentsInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
