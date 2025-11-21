.class public final Landroid/os/strictmode/ResourceMismatchViolation;
.super Landroid/os/strictmode/Violation;
.source "ResourceMismatchViolation.java"


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    return-void
.end method
