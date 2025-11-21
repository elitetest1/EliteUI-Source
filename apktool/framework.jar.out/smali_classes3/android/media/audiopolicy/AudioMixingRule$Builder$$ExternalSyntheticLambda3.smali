.class public final synthetic Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroid/media/audiopolicy/AudioMixingRule$Builder$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    invoke-static {p0, p1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->lambda$addRuleInternal$0(ILandroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Z

    move-result p0

    return p0
.end method
