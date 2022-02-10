using schoolsRegistration.Context;
using schoolsRegistration.Models;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace schoolsRegistration.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SchoolsController : Controller
    {
        private readonly AppDbContext context;
        public SchoolsController(AppDbContext context) {
            this.context = context;
        }
        
        // GET: api/<ValuesController>
        [HttpGet]
        public ActionResult Get()
        {
            try {
                return Ok(context.schools.ToList());
            }catch(Exception ex) {
                return BadRequest(ex.Message);
            }          
        }
/*
        // GET api/<ValuesController>/5
        [HttpGet("{id}", Name = "GetGestor")]
        public ActionResult Get(int id)
        {
            try
            {
                var gestor = context.gestores_bd.FirstOrDefault(g=>g.id == id);
                return Ok(gestor);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // POST api/<ValuesController>
        [HttpPost]
        public ActionResult Post([FromBody] Gestores_Bd gestor)
        {
            try
            {
                context.gestores_bd.Add(gestor);
                context.SaveChanges();
                return CreatedAtRoute("GetGestor", new { id = gestor.id}, gestor);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // PUT api/<ValuesController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Gestores_Bd gestor)
        {
            try
            {
               if(gestor.id == id) { 
                    context.Entry(gestor).State = EntityState.Modified;
                    context.SaveChanges();
                    return CreatedAtRoute("GetGestor", new { id = gestor.id }, gestor);
                } else return BadRequest();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // DELETE api/<ValuesController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            try {
                var gestor = context.gestores_bd.FirstOrDefault(g => g.id == id);

                if (gestor != null)
                {
                    context.gestores_bd.Remove(gestor);
                    context.SaveChanges();
                    return Ok(id);
                }
                else return BadRequest();
               
            } catch (Exception ex) {
                return BadRequest(ex.Message);
            }
        }
        */
    }
}
