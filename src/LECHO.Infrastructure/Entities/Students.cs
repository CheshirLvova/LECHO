﻿using System;
using System.Collections.Generic;

namespace LECHO.Infrastructure
{
    public partial class Students
    {
        public Students()
        {
            Choices = new HashSet<Choices>();
            Favourites = new HashSet<Favourites>();
        }

        public int UserId { get; set; }
        public int Faculty { get; set; }
        public string GradeBookId { get; set; }
        public int? Course { get; set; }

        public virtual Faculties FacultyNavigation { get; set; }
        public virtual Users User { get; set; }
        public virtual ICollection<Choices> Choices { get; set; }
        public virtual ICollection<Favourites> Favourites { get; set; }
    }
}
