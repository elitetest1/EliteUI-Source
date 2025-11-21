.class public final synthetic Landroid/app/ActivityManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/RateLimitingCache$ValueFetcher;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda3;->f$0:Landroid/app/ActivityManager;

    return-void
.end method


# virtual methods
.method public final blacklist fetchValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/app/ActivityManager$$ExternalSyntheticLambda3;->f$0:Landroid/app/ActivityManager;

    invoke-static {p0}, Landroid/app/ActivityManager;->$r8$lambda$nTwFhl_4O-ZVwyT6URmXK0QLjbk(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
