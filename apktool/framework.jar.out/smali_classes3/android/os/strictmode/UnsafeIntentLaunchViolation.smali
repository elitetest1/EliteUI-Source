.class public final Landroid/os/strictmode/UnsafeIntentLaunchViolation;
.super Landroid/os/strictmode/Violation;
.source "UnsafeIntentLaunchViolation.java"


# instance fields
.field private transient blacklist mIntent:Landroid/content/Intent;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch of unsafe intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public whitelist getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/os/strictmode/UnsafeIntentLaunchViolation;->mIntent:Landroid/content/Intent;

    return-object p0
.end method
