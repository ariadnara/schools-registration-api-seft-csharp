using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace schoolsRegistration.Models {

	public class Schools
	{
		[Key]
		public int id { get; set; }
		public string dep_administrativa { get; set; }
		public string tipo { get; set; }
		public string nome { get; set; }
		public string abr_nome { get; set; }
		public string logradouro { get; set; }
		public int numero { get; set; }
		public string bairro { get; set; }
		public int cep { get; set; }
		public double latitude { get; set; }
		public double longitude { get; set; }
		public int telefone { get; set; }
		public string email { get; set; }
		public string url_website { get; set; }
		
	}
}


