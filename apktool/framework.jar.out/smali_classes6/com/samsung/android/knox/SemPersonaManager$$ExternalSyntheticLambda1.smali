.class public final synthetic Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic greylist f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor greylist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/SemPersonaManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->lambda$getWorkName$2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
